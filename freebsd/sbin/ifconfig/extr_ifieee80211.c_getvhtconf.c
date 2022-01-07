
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_IOC_VHTCONF ;
 scalar_t__ get80211val (int,int ,int *) ;
 int gotvhtconf ;
 int vhtconf ;
 int warn (char*) ;

__attribute__((used)) static void
getvhtconf(int s)
{
 if (gotvhtconf)
  return;
 if (get80211val(s, IEEE80211_IOC_VHTCONF, &vhtconf) < 0)
  warn("unable to get VHT configuration information");
 gotvhtconf = 1;
}
