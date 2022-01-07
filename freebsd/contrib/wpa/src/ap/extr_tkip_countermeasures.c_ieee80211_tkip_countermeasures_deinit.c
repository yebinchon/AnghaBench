
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int ieee80211_tkip_countermeasures_stop ;

void ieee80211_tkip_countermeasures_deinit(struct hostapd_data *hapd)
{
 eloop_cancel_timeout(ieee80211_tkip_countermeasures_stop, hapd, ((void*)0));
}
