
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regdomain {int name; TYPE_1__* cc; } ;
struct regdata {int dummy; } ;
struct country {int * isoname; int code; } ;
struct TYPE_4__ {int * isocc; int country; } ;
struct TYPE_3__ {int code; } ;


 int errx (int,char*,int ,int ) ;
 struct regdata* getregdata () ;
 struct country* lib80211_country_findbycc (struct regdata*,int ) ;
 TYPE_2__ regdomain ;

__attribute__((used)) static void
defaultcountry(const struct regdomain *rd)
{
 struct regdata *rdp = getregdata();
 const struct country *cc;

 cc = lib80211_country_findbycc(rdp, rd->cc->code);
 if (cc == ((void*)0))
  errx(1, "internal error, ISO country code %d not "
      "defined for regdomain %s", rd->cc->code, rd->name);
 regdomain.country = cc->code;
 regdomain.isocc[0] = cc->isoname[0];
 regdomain.isocc[1] = cc->isoname[1];
}
