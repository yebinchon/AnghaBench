
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regdomain {int name; } ;
struct ieee80211_regdomain {scalar_t__ regdomain; scalar_t__ country; char location; scalar_t__ ecm; } ;
struct country {int isoname; } ;


 int LINE_CHECK (char*,...) ;
 int getregdata () ;
 struct country* lib80211_country_findbycc (int ,scalar_t__) ;
 struct regdomain* lib80211_regdomain_findbysku (int ,scalar_t__) ;

__attribute__((used)) static void
print_regdomain(const struct ieee80211_regdomain *reg, int verb)
{
 if ((reg->regdomain != 0 &&
     reg->regdomain != reg->country) || verb) {
  const struct regdomain *rd =
      lib80211_regdomain_findbysku(getregdata(), reg->regdomain);
  if (rd == ((void*)0))
   LINE_CHECK("regdomain %d", reg->regdomain);
  else
   LINE_CHECK("regdomain %s", rd->name);
 }
 if (reg->country != 0 || verb) {
  const struct country *cc =
      lib80211_country_findbycc(getregdata(), reg->country);
  if (cc == ((void*)0))
   LINE_CHECK("country %d", reg->country);
  else
   LINE_CHECK("country %s", cc->isoname);
 }
 if (reg->location == 'I')
  LINE_CHECK("indoor");
 else if (reg->location == 'O')
  LINE_CHECK("outdoor");
 else if (verb)
  LINE_CHECK("anywhere");
 if (reg->ecm)
  LINE_CHECK("ecm");
 else if (verb)
  LINE_CHECK("-ecm");
}
