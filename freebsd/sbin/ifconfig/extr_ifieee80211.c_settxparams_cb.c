
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_txparams_req {int dummy; } ;


 int IEEE80211_IOC_TXPARAMS ;
 int set80211 (int,int ,int ,int,struct ieee80211_txparams_req*) ;

__attribute__((used)) static void
settxparams_cb(int s, void *arg)
{
 struct ieee80211_txparams_req *txp = arg;
 set80211(s, IEEE80211_IOC_TXPARAMS, 0, sizeof(*txp), txp);
}
