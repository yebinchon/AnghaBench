
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int IEEE80211_IOC_ROAMING ;
 int IEEE80211_ROAMING_AUTO ;
 int IEEE80211_ROAMING_DEVICE ;
 int IEEE80211_ROAMING_MANUAL ;
 int errx (int,char*) ;
 int set80211 (int,int ,int,int ,int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static void
set80211roaming(const char *val, int d, int s, const struct afswtch *rafp)
{
 int mode;

 if (strcasecmp(val, "device") == 0) {
  mode = IEEE80211_ROAMING_DEVICE;
 } else if (strcasecmp(val, "auto") == 0) {
  mode = IEEE80211_ROAMING_AUTO;
 } else if (strcasecmp(val, "manual") == 0) {
  mode = IEEE80211_ROAMING_MANUAL;
 } else {
  errx(1, "unknown roaming mode");
 }
 set80211(s, IEEE80211_IOC_ROAMING, mode, 0, ((void*)0));
}
