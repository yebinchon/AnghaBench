
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_roamparams_req {int dummy; } ;


 int IEEE80211_IOC_ROAM ;
 int set80211 (int,int ,int ,int,struct ieee80211_roamparams_req*) ;

__attribute__((used)) static void
setroam_cb(int s, void *arg)
{
 struct ieee80211_roamparams_req *roam = arg;
 set80211(s, IEEE80211_IOC_ROAM, 0, sizeof(*roam), roam);
}
