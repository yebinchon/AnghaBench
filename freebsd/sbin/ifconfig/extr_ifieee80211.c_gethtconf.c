
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_IOC_HTCONF ;
 scalar_t__ get80211val (int,int ,int *) ;
 int gothtconf ;
 int htconf ;
 int warn (char*) ;

__attribute__((used)) static void
gethtconf(int s)
{
 if (gothtconf)
  return;
 if (get80211val(s, IEEE80211_IOC_HTCONF, &htconf) < 0)
  warn("unable to get HT configuration information");
 gothtconf = 1;
}
