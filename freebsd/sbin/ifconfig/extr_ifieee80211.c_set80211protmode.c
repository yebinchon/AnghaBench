
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int IEEE80211_IOC_PROTMODE ;
 int IEEE80211_PROTMODE_CTS ;
 int IEEE80211_PROTMODE_OFF ;
 int IEEE80211_PROTMODE_RTSCTS ;
 int errx (int,char*) ;
 int set80211 (int,int ,int,int ,int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static void
set80211protmode(const char *val, int d, int s, const struct afswtch *rafp)
{
 int mode;

 if (strcasecmp(val, "off") == 0) {
  mode = IEEE80211_PROTMODE_OFF;
 } else if (strcasecmp(val, "cts") == 0) {
  mode = IEEE80211_PROTMODE_CTS;
 } else if (strncasecmp(val, "rtscts", 3) == 0) {
  mode = IEEE80211_PROTMODE_RTSCTS;
 } else {
  errx(1, "unknown protection mode");
 }

 set80211(s, IEEE80211_IOC_PROTMODE, mode, 0, ((void*)0));
}
