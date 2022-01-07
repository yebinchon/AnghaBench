
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {scalar_t__ acct_session_started; scalar_t__ acct_session_id; int addr; } ;
struct hostapd_data {int dummy; } ;


 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_RADIUS ;
 int accounting_interim_update ;
 int accounting_sta_report (struct hostapd_data*,struct sta_info*,int) ;
 int eloop_cancel_timeout (int ,struct hostapd_data*,struct sta_info*) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,unsigned long long) ;

void accounting_sta_stop(struct hostapd_data *hapd, struct sta_info *sta)
{
 if (sta->acct_session_started) {
  accounting_sta_report(hapd, sta, 1);
  eloop_cancel_timeout(accounting_interim_update, hapd, sta);
  hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_RADIUS,
          HOSTAPD_LEVEL_INFO,
          "stopped accounting session %016llX",
          (unsigned long long) sta->acct_session_id);
  sta->acct_session_started = 0;
 }
}
