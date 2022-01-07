
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int IEEE80211_IOC_WEP ;
 int IEEE80211_WEP_MIXED ;
 int IEEE80211_WEP_OFF ;
 int IEEE80211_WEP_ON ;
 int errx (int,char*) ;
 int set80211 (int,int ,int,int ,int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static void
set80211wepmode(const char *val, int d, int s, const struct afswtch *rafp)
{
 int mode;

 if (strcasecmp(val, "off") == 0) {
  mode = IEEE80211_WEP_OFF;
 } else if (strcasecmp(val, "on") == 0) {
  mode = IEEE80211_WEP_ON;
 } else if (strcasecmp(val, "mixed") == 0) {
  mode = IEEE80211_WEP_MIXED;
 } else {
  errx(1, "unknown wep mode");
 }

 set80211(s, IEEE80211_IOC_WEP, mode, 0, ((void*)0));
}
