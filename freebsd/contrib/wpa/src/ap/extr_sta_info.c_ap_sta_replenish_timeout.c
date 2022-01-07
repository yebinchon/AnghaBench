
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sta_info {int addr; } ;
struct hostapd_data {int dummy; } ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_IEEE80211 ;
 int ap_handle_session_timer ;
 int eloop_replenish_timeout (int ,int ,int ,struct hostapd_data*,struct sta_info*) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,int ) ;

void ap_sta_replenish_timeout(struct hostapd_data *hapd, struct sta_info *sta,
         u32 session_timeout)
{
 if (eloop_replenish_timeout(session_timeout, 0,
        ap_handle_session_timer, hapd, sta) == 1) {
  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_IEEE80211,
          HOSTAPD_LEVEL_DEBUG, "setting session timeout "
          "to %d seconds", session_timeout);
 }
}
