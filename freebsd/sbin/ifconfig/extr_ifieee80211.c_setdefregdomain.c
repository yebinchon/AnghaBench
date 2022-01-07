
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regdomain {scalar_t__ sku; int * cc; } ;
struct regdata {int dummy; } ;
struct TYPE_3__ {scalar_t__ regdomain; scalar_t__ country; scalar_t__* isocc; } ;


 scalar_t__ CTRY_DEFAULT ;
 int SKU_FCC ;
 int defaultcountry (struct regdomain const*) ;
 int errx (int,char*) ;
 struct regdata* getregdata () ;
 int getregdomain (int) ;
 struct regdomain* lib80211_regdomain_findbysku (struct regdata*,int ) ;
 TYPE_1__ regdomain ;
 int setregdomain_cb (int,TYPE_1__*) ;

__attribute__((used)) static void
setdefregdomain(int s)
{
 struct regdata *rdp = getregdata();
 const struct regdomain *rd;



 if (regdomain.regdomain != 0 ||
     regdomain.country != CTRY_DEFAULT)
  return;

 getregdomain(s);


 if (regdomain.regdomain != 0 ||
     regdomain.country != CTRY_DEFAULT)
  return;


 rd = lib80211_regdomain_findbysku(rdp, SKU_FCC);
 if (rd == ((void*)0))
  errx(1, "FCC regdomain was not found");

 regdomain.regdomain = rd->sku;
 if (rd->cc != ((void*)0))
  defaultcountry(rd);


 setregdomain_cb(s, &regdomain);


 regdomain.regdomain = 0;
 regdomain.country = CTRY_DEFAULT;
 regdomain.isocc[0] = 0;
 regdomain.isocc[1] = 0;
}
