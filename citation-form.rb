#!/usr/bin/ruby
#
# Original version August 18, 2010
# by Don Cruse
# http://doncruse.github.com
# 
#	License: http://www.opensource.org/licenses/mit-license.php
#
# Short form:
# You are of course welcome to edit this list, adding or
# removing abbreviations as you see fit.

WORDS = {
    "academy" => "Acad.",
    "academies" => "Acads.",
    "administrative" => "Admin.",
    "administration" => "Admin.",
    "administrator" => "Adm'r",
    "administrators" => "Adm'rs",
    "administratrix" => "Adm'x",
    "advertising" => "Adver.",
    "agriculture" => "Agric.",
    "agricultural" => "Agric.",
    "america" => "Am.",
    "american" => "Am.",
    "and" => "&",
    "associate" => "Assoc.",
    "associates" => "Assocs.",
    "atlantic" => "Atl.",
    "authority" => "Auth.",
    "authorities" => "Auths.",
    "automobile" => "Auto.",
    "automotive" => "Auto.",
    "automobiles" => "Autos.",
    "avenue" => "Ave.",
    "avenues" => "Aves.",
    "board" => "Bd.",
    "boards" => "Bds.",
    "broadcast" => "Broad.",
    "brotherhood" => "Bhd.",
    "brotherhoods" => "Bhds.",
    "broadcasting" => "Broad.",
    "bankruptcy" => "Bankr.",
    "brothers" => "Bros.",
    "building" => "Bldg.",
    "buildings" => "Bldgs.",
    "business" => "Bus.",
    "businesses" => "Bus.",
    "casualty" => "Cas.",
    "center" => "Ctr.",
    "centre" => "Ctr.",
    "centers" => "Ctrs.",
    "centres" => "Ctrs.",
    "central" => "Cent.",
    "chemical" => "Chem.",
    "chemicals" => "Chems.",
    "coalition" => "Coal.",
    "coalitions" => "Coals.",
    "college" => "Coll.",
    "colleges" => "Colls.",
    "commission" => "Comm'n",
    "commissions" => "Comm'ns",
    "commissioner" => "Comm'r",
    "commissioners" => "Comm'rs",
    "committee" => "Comm.",
    "committees" => "Comms.",
    "communication" => "Commc'n",
    "communications" => "Commc'ns",
    "community" => "Cmty.",
    "communities" => "Cmtys.",
    "company" => "Co.",
    "companies" => "Cos.",
    "compensation" => "Comp.",
    "condominium" => "Condo.",
    "condominiums" => "Condos.",
    "congress" => "Cong.",
    "congressional" => "Cong.",
    "congresses" => "Congs.",
    "consolidated" => "Consol.",
    "consolidateds" => "Consols.",
    "construction" => "Constr.",
    "constructions" => "Constrs.",
    "continental" => "Cont'l",
    "cooperative" => "Coop.",
    "cooperatives" => "Coops.",
    "corporation" => "Corp.",
    "corporations" => "Corps.",
    "correction" => "Corr.",
    "corrections" => "Corr.",
    "correctional" => "Corr.",
    "defense" => "Def.",
    "department" => "Dep't",
    "detention" => "Det.",
    "development" => "Dev.",
    "developments" => "Devs.",
    "director" => "Dir.",
    "directors" => "Dirs.",
    "discount" => "Disc.",
    "discounts" => "Discs.",
    "distributor" => "Distrib.",
    "distributors" => "Distribs.",
    "distributing" => "Distrib.",
    "district" => "Dist.",
    "districts" => "Dists.",
    "division" => "Div.",
    "divisions" => "Divs.",
    "east" => "E.",
    "eastern" => "E.",
    "economic" => "Econ.",
    "economics" => "Econ.",
    "economical" => "Econ.",
    "economy" => "Econ.",
    "economies" => "Econs.",
    "education" => "Educ.",
    "educational" => "Educ.",
    "electric" => "Elec.",
    "electrical" => "Elec.",
    "electricity" => "Elec.",
    "electronic" => "Elec.",
    "electronics" => "Elecs.",
    "engineer" => "Eng'r",
    "engineers" => "Eng'rs",
    "engineering" => "Eng'g",
    "enterprise" => "Enter.",
    "enterprises" => "Enters.",
    "entertainment" => "Entm't",
    "entertainments" => "Entm'ts",
    "environment" => "Env't",
    "environments" => "Env'ts",
    "environmental" => "Envtl.",
    "equality" => "Equal.",
    "equipment" => "Equip.",
    "equipments" => "Equips.",
    "examiner" => "Exam'r",
    "examiners" => "Exam'rs",
    "exchange" => "Exch.",
    "exchanges" => "Exchs.",
    "executor" => "Ex'r",
    "executrix" => "Ex'x",
    "executors" => "Ex'rs",
    "executrixes" => "Ex'xs",
    "export" => "Exp.",
    "exports" => "Exps.",
    "federal" => "Fed.",
    "federation" => "Fed'n",
    "federations" => "Fed'ns",
    "fidelity" => "Fid.",
    "finance" => "Fin.",
    "financial" => "Fin.",
    "financing" => "Fin.",
    "foundation" => "Found.",
    "foundations" => "Founds.",
    "general" => "Gen.",
    "government" => "Gov't",
    "governments" => "Gov'ts",
    "guaranty" => "Guar.",
    "guaranties" => "Guars.",
    "hospital" => "Hosp.",
    "hospitals" => "Hosps.",
    "housing" => "Hous.",
    "import" => "Imp.",
    "imports" => "Imps.",
    "importer" => "Imp.",
    "importers" => "Imps.",
    "importation" => "Imp.",
    "importations" => "Imps.",
    "incorporated" => "Inc.",
    "indemnity" => "Indem.",
    "indemnities" => "Indems.",
    "independent" => "Indep.",
    "independents" => "Indeps.",
    "industry" => "Indus.",
    "industries" => "Indus.",
    "industrial" => "Indus.",
    "information" => "Info.",
    "institute" => "Inst.",
    "institutes" => "Insts.",
    "institution" => "Inst.",
    "institutions" => "Insts.",
    "insurance" => "Ins.",
    "international" => "Int'l",
    "investment" => "Inv.",
    "investments" => "Invs.",
    "laboratory" => "Lab.",
    "laboratories" => "Labs.",
    "liability" => "Liab.",
    "liabilities" => "Liabs.",
    "limited" => "Ltd.",
    "limiteds" => "Ltds.",
    "litigation" => "Litig.",
    "litigations" => "Litigs.",
    "machine" => "Mach.",
    "machines" => "Machs.",
    "machinery" => "Mach.",
    "machineries" => "Machs.",
    "maintenance" => "Maint.",
    "management" => "Mgmt.",
    "managements" => "Mgmts.",
    "manufacturer" => "Mfr.",
    "manufacturers" => "Mfrs.",
    "manufacturing" => "Mfg.",
    "maritime" => "Mar.",
    "market" => "Mkt.",
    "markets" => "Mkts.",
    "marketing" => "Mktg.",
    "mechanic" => "Mech.",
    "mechanics" => "Mechs.",
    "mechanical" => "Mech.",
    "medical" => "Med.",
    "medicine" => "Med.",
    "memorial" => "Mem'l",
    "memorials" => "Mem'ls",
    "merchant" => "Merch.",
    "merchandise" => "Merch.",
    "merchandising" => "Merch.",
    "metropolitan" => "Metro.",
    "metropolitans" => "Metros.",
    "municipal" => "Mun.",
    "mutual" => "Mut.",
    "mutuals" => "Muts.",
    "national" => "Nat'l",
    "nationals" => "Nat'ls",
    "north" => "N.",
    "northern" => "N.",
    "northeast" => "Ne.",
    "northeastern" => "Ne.",
    "northwest" => "Nw.",
    "northwestern" => "Nw.",
    "number" => "No.",
    "organization" => "Org.",
    "organizing" => "Org.",
    "organizations" => "Orgs.",
    "pacific" => "Pac.",
    "partnership" => "P'ship",
    "partnerships" => "P'ships",
    "person" => "Pers.",
    "personal" => "Pers.",
    "personnel" => "Pers.",
    "pharmaceutics" => "Pharm.",
    "pharmaceutical" => "Pharm.",
    "pharmaceuticals" => "Pharms.",
    "perserve" => "Pres.",
    "preservation" => "Pres.",
    "probation" => "Prob.",
    "product" => "Prod.",
    "products" => "Prods.",
    "production" => "Prod.",
    "productions" => "Prods.",
    "professional" => "Prof'l",
    "professionals" => "Prof'ls",
    "property" => "Prop.",
    "properties" => "Props.",
    "protection" => "Prot.",
    "public" => "Pub.",
    "publication" => "Publ'n",
    "publishing" => "Publ'g",
    "publications" => "Publ'ns",
    "railroad" => "R.R.",
    "railway" => "Ry.",
    "refining" => "Ref.",
    "railways" => "Rys.",
    "regional" => "Reg'l",
    "rehabilitation" => "Rehab.",
    "reproductive" => "Reprod.",
    "reproduction" => "Reprod.",
    "resource" => "Res.",
    "resources" => "Res.",
    "restaurant" => "Rest",
    "restaurants" => "Rests.",
    "retirement" => "Ret.",
    "road" => "Rd.",
    "roads" => "Rds.",
    "saving" => "Sav.",
    "savings" => "Savs.",
    "school" => "Sch.",
    "schools" => "Sch.",
    "science" => "Sci.",
    "sciences" => "Scis.",
    "secretary" => "Sec'y",
    "secretaries" => "Sec'ys",
    "security" => "Sec.",
    "securities" => "Sec.",
    "service" => "Serv.",
    "services" => "Servs.",
    "shareholder" => "S'holder",
    "shareholders" => "S'holders",
    "social" => "Soc.",
    "society" => "Soc'y",
    "south" => "S.",
    "southern" => "S.",
    "southeast" => "Se.",
    "southeastern" => "Se.",
    "southwest" => "Sw.",
    "southwestern" => "Sw.",
    "steamship" => "S.S",
    "steamships" => "S.S",
    "street" => "St.",
    "subcommittee" => "Subcomm.",
    "subcommittees" => "Subcomms.",
    "surety" => "Sur.",
    "sureties" => "Surs.",
    "system" => "Sys.",
    "systems" => "Sys.",
    "technology" => "Tech.",
    "technologies" => "Techs.",
    "telecommunication" => "Telecomm.",
    "telecommunications" => "Telecomms.",
    "telephone" => "Tele.",
    "telegraph" => "Tele.",
    "telephones" => "Teles.",
    "telegraphs" => "Teles.",
    "temporary" => "Temp.",
    "temporaries" => "Temps.",
    "township" => "Twp.",
    "townships" => "Twps.",
    "transcontinental" => "Transcon.",
    "transport" => "Transp.",
    "transportation" => "Transp.",
    "transports" => "Transps.",
    "transportations" => "Transps.",
    "trustee" => "Tr.",
    "trustees" => "Trs.",
    "turnpike" => "Tpk.",
    "turnpikes" => "Tpk.",
    "uniform" => "Unif.",
    "university" => "Univ.",
    "universities" => "Univs.",
    "utility" => "Util.",
    "utilities" => "Utils.",
    "village" => "Vill.",
    "villages" => "Vills.",
    "west" => "W.",
    "western" => "W."    
}
  # These abbreviations check against the 18th edition of the Bluebook.
  # No claim of ownership is made about any abbrevation, because that
  # would be silly.  I made some personal judgments about pluralization.
  
  PLACES = {
  	'alabama' => 'Ala.',
  	'american aamoa' => 'Am. Sam.',
  	'arizona' => 'Ariz.',
  	'arkansas' => 'Ark.',
  	'baltimore' => 'Balt.',
  	'california' => 'Cal.',
  	'chicago' => 'Chi.',
  	'colorado' => 'Colo.',
  	'connecticut' => 'Conn.',
  	'delaware' => 'Del.',
  	'district of columbia' => 'D.C.',
  	'florida' => 'Fla.',
  	'georgia' => "Ga.",
  	'hawaii' => 'Haw.',
  	'hawai\'i' => 'Haw.',
  	'illinois' => 'Ill.',
  	'indiana' => 'Ind.',
  	'kansas' => 'Kan.',
  	'kentucky' => "Ky.",
  	'los angeles' => "L.A.",
  	'louisiana' => "La.",
  	'maine' => 'Me.',
  	'maryland' => 'Md.',
  	'massachusetts' => 'Mass.',
  	'michigan' => "Mich.",
  	'minnesota' => 'Minn.',
  	'mississippi' => 'Miss.',
  	'missouri' => 'Mo.',
  	'montana' => 'Mont.',
  	'nebraska' => 'Neb.',
  	'nevada' => 'Nev.',
  	'new hampshire' => 'N.H.',
  	'new jersey' => 'N.J.',
  	'new mexico' => 'N.M.',
  	'new york' => 'N.Y.',
  	'north carolina' => 'N.C.',
  	'north dakota' => 'N.D.',
  	'northern mariana islands' => 'N. Mar. I.',
  	'oklahoma' => 'Okla.',
  	'oregon' => 'Or.',
  	'pennsylvania' => 'Pa.',
  	'philadelphia' => 'Phila.',
  	'puerto rico' => 'P.R.',
  	'rhode island' => 'R.I.',
  	'south carolina' => 'S.C.',
  	'south dakota' => 'S.D.',
  	'san francisco' => 'S.F.',
  	'tennessee' => 'Tenn.',
  	'texas' => 'Tex.',
  	'vermont' => 'Vt.',
  	'virgin islands' => 'V.I.',
  	'virginia' => 'Va.',
  	'washington' => 'Wash.',
  	'west virginia' => 'W. Va.',
  	'wisconsin' => 'Wis.',
  	'wyoming' => 'Wyo.'
  }
  

###########################################################
# What follows is the substitution program.
#
# It takes the selected text, splits it into words,
# checks to see if the word appears in the table above
# (without regard to capitalization), and if so does
# the substitution.  Then it reassembles the text
# with spaces.

# KNOWN ISSUE: This does not yet know how to process
# terms that might be split into two words, such as "rail road"
# or "south east."  I may need some guidance about whether
# those present citation edge cases.

# KNOWN ISSUE: This produces 'dumb' apostrophes, which require
# some tweaking in your word processor.

# You might want to combine this with a nice
# titlecase routine, such as the one published
# by John Gruber.
# Unfortunately, his does not first downcase the text,
# so it chokes on ALL CAPS and can't fix it.
# Because so many courts use the hideous ALL CAPS, 
# I may have to modify his program or put another
# script in between.

#####
# whitelisted punctuation to save at the beginning and end of words
# 40 is ASCII for a left paren, 41 is a right paren, 44 is a comma, 59 is a semicolon
#
# leading: only a left paren is understood
# trailing: commas, semicolons, and right parens are understood
LEADING_PUNCTUATION = [40]
TRAILING_PUNCTUATION = [41, 44, 59]

casename = STDIN.read
casename.strip!
tmp = Array.new

casename.split(/\s/).each do |word|
  leading_punctuation = []
  trailing_punctuation = []
  reassembled = ""
  
  # Setting aside certain punctuation marks
  if LEADING_PUNCTUATION.include?(word.slice(0)) and (word.size > 1) # don't want empty before next step
    leading_punctuation << word.slice!(0)
  end
  while TRAILING_PUNCTUATION.include?(word.slice(-1))
    trailing_punctuation << word.slice!(-1)
  end
  
  # Substituions of the word itself
  if WORDS.has_key?(word.downcase)
    reassembled = WORDS[word.downcase].capitalize.gsub("'","\x27")
  elsif PLACES.has_key?(word.downcase)
    reassembled = PLACES[word.downcase].capitalize    
  else
    reassembled = word
  end
  
  # Reassembly with punctuation
  # ...leading punctuation
  if (leading_punctuation.size == 1)
    reassembled = leading_punctuation.first.chr + reassembled
  end
  # ...trailing punctuation
  if trailing_punctuation.size > 0
    trailing_punctuation.each do |l|
      reassembled += l.chr
    end
  end
  tmp << reassembled
end
puts tmp.join(" ")