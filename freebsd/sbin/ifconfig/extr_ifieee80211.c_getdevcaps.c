
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_devcaps_req {int dummy; } ;


 int IEEE80211_DEVCAPS_SPACE (struct ieee80211_devcaps_req*) ;
 int IEEE80211_IOC_DEVCAPS ;
 int err (int,char*) ;
 scalar_t__ get80211 (int,int ,struct ieee80211_devcaps_req*,int ) ;

__attribute__((used)) static void
getdevcaps(int s, struct ieee80211_devcaps_req *dc)
{
 if (get80211(s, IEEE80211_IOC_DEVCAPS, dc,
     IEEE80211_DEVCAPS_SPACE(dc)) < 0)
  err(1, "unable to get device capabilities");
}
