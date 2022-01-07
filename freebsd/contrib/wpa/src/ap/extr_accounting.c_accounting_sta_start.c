
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {int acct_session_started; int acct_interim_interval; int addr; scalar_t__ last_tx_bytes_lo; scalar_t__ last_tx_bytes_hi; scalar_t__ last_rx_bytes_lo; scalar_t__ last_rx_bytes_hi; int acct_session_start; scalar_t__ acct_session_id; } ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int radius; TYPE_2__* conf; } ;
struct TYPE_4__ {TYPE_1__* radius; } ;
struct TYPE_3__ {int acct_server; } ;


 int ACCT_DEFAULT_UPDATE_INTERVAL ;
 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_RADIUS ;
 int RADIUS_ACCT ;
 int RADIUS_ACCT_STATUS_TYPE_START ;
 int accounting_interim_update ;
 struct radius_msg* accounting_msg (struct hostapd_data*,struct sta_info*,int ) ;
 int eloop_register_timeout (int,int ,int ,struct hostapd_data*,struct sta_info*) ;
 int hostapd_drv_sta_clear_stats (struct hostapd_data*,int ) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,unsigned long long) ;
 int os_get_reltime (int *) ;
 scalar_t__ radius_client_send (int ,struct radius_msg*,int ,int ) ;
 int radius_msg_free (struct radius_msg*) ;

void accounting_sta_start(struct hostapd_data *hapd, struct sta_info *sta)
{
 struct radius_msg *msg;
 int interval;

 if (sta->acct_session_started)
  return;

 hostapd_logger(hapd, sta->addr, HOSTAPD_MODULE_RADIUS,
         HOSTAPD_LEVEL_INFO,
         "starting accounting session %016llX",
         (unsigned long long) sta->acct_session_id);

 os_get_reltime(&sta->acct_session_start);
 sta->last_rx_bytes_hi = 0;
 sta->last_rx_bytes_lo = 0;
 sta->last_tx_bytes_hi = 0;
 sta->last_tx_bytes_lo = 0;
 hostapd_drv_sta_clear_stats(hapd, sta->addr);

 if (!hapd->conf->radius->acct_server)
  return;

 if (sta->acct_interim_interval)
  interval = sta->acct_interim_interval;
 else
  interval = ACCT_DEFAULT_UPDATE_INTERVAL;
 eloop_register_timeout(interval, 0, accounting_interim_update,
          hapd, sta);

 msg = accounting_msg(hapd, sta, RADIUS_ACCT_STATUS_TYPE_START);
 if (msg &&
     radius_client_send(hapd->radius, msg, RADIUS_ACCT, sta->addr) < 0)
  radius_msg_free(msg);

 sta->acct_session_started = 1;
}
