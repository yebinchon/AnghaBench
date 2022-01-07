
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int ic_minpower; int ic_maxpower; int ic_maxregpower; } ;


 int print_chaninfo (struct ieee80211_channel const*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_txpow_verbose(const struct ieee80211_channel *c)
{
 print_chaninfo(c, 1);
 printf("min %4.1f dBm  max %3.1f dBm  reg %2d dBm",
     c->ic_minpower/2., c->ic_maxpower/2., c->ic_maxregpower);

 if (c->ic_maxpower > 2*c->ic_maxregpower)
  printf(" <");
}
