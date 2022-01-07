
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regdata {int dummy; } ;


 int free (struct regdata*) ;
 int lib80211_regdomain_cleanup (struct regdata*) ;

void
lib80211_free_regdata(struct regdata *rdp)
{
 lib80211_regdomain_cleanup(rdp);
 free(rdp);
}
