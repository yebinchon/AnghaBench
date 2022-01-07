
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int acct_interim_interval; } ;
struct hostapd_data {int dummy; } ;
struct hostap_sta_driver_data {int dummy; } ;


 int ACCT_DEFAULT_UPDATE_INTERVAL ;
 int accounting_sta_interim (struct hostapd_data*,struct sta_info*) ;
 int accounting_sta_update_stats (struct hostapd_data*,struct sta_info*,struct hostap_sta_driver_data*) ;
 int eloop_register_timeout (int,int ,void (*) (void*,void*),struct hostapd_data*,struct sta_info*) ;

__attribute__((used)) static void accounting_interim_update(void *eloop_ctx, void *timeout_ctx)
{
 struct hostapd_data *hapd = eloop_ctx;
 struct sta_info *sta = timeout_ctx;
 int interval;

 if (sta->acct_interim_interval) {
  accounting_sta_interim(hapd, sta);
  interval = sta->acct_interim_interval;
 } else {
  struct hostap_sta_driver_data data;
  accounting_sta_update_stats(hapd, sta, &data);
  interval = ACCT_DEFAULT_UPDATE_INTERVAL;
 }

 eloop_register_timeout(interval, 0, accounting_interim_update,
          hapd, sta);
}
