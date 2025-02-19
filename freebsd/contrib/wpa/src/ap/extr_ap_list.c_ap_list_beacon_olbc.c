
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* conf; TYPE_2__* current_mode; } ;
struct ap_info {scalar_t__ channel; int erp; int* supported_rates; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct TYPE_3__ {scalar_t__ channel; } ;


 int ERP_INFO_NON_ERP_PRESENT ;
 scalar_t__ HOSTAPD_MODE_IEEE80211G ;
 int WLAN_SUPP_RATES_MAX ;

__attribute__((used)) static int ap_list_beacon_olbc(struct hostapd_iface *iface, struct ap_info *ap)
{
 int i;

 if (iface->current_mode == ((void*)0) ||
     iface->current_mode->mode != HOSTAPD_MODE_IEEE80211G ||
     iface->conf->channel != ap->channel)
  return 0;

 if (ap->erp != -1 && (ap->erp & ERP_INFO_NON_ERP_PRESENT))
  return 1;

 for (i = 0; i < WLAN_SUPP_RATES_MAX; i++) {
  int rate = (ap->supported_rates[i] & 0x7f) * 5;
  if (rate == 60 || rate == 90 || rate > 110)
   return 0;
 }

 return 1;
}
