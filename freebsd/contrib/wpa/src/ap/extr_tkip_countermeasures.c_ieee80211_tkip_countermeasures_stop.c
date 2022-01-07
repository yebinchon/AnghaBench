
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {scalar_t__ tkip_countermeasures; } ;


 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_IEEE80211 ;
 int hostapd_drv_set_countermeasures (struct hostapd_data*,int ) ;
 int hostapd_logger (struct hostapd_data*,int *,int ,int ,char*) ;

__attribute__((used)) static void ieee80211_tkip_countermeasures_stop(void *eloop_ctx,
      void *timeout_ctx)
{
 struct hostapd_data *hapd = eloop_ctx;
 hapd->tkip_countermeasures = 0;
 hostapd_drv_set_countermeasures(hapd, 0);
 hostapd_logger(hapd, ((void*)0), HOSTAPD_MODULE_IEEE80211,
         HOSTAPD_LEVEL_INFO, "TKIP countermeasures ended");
}
