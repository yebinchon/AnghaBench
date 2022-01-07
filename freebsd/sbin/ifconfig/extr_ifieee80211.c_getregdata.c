
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regdata {int dummy; } ;


 int errx (int,char*) ;
 struct regdata* lib80211_alloc_regdata () ;

__attribute__((used)) static struct regdata *
getregdata(void)
{
 static struct regdata *rdp = ((void*)0);
 if (rdp == ((void*)0)) {
  rdp = lib80211_alloc_regdata();
  if (rdp == ((void*)0))
   errx(-1, "missing or corrupted regdomain database");
 }
 return rdp;
}
