
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* conf; int drv_priv; } ;
struct TYPE_2__ {scalar_t__ ieee80211w; } ;


 int MSG_DEBUG ;
 int NUM_WEP_KEYS ;
 int WPA_ALG_NONE ;
 scalar_t__ hostapd_drv_set_key (char const*,struct hostapd_data*,int ,int *,int,int ,int *,int ,int *,int ) ;
 int wpa_printf (int ,char*,char const*,int) ;

__attribute__((used)) static void hostapd_broadcast_key_clear_iface(struct hostapd_data *hapd,
           const char *ifname)
{
 int i;

 if (!ifname || !hapd->drv_priv)
  return;
 for (i = 0; i < NUM_WEP_KEYS; i++) {
  if (hostapd_drv_set_key(ifname, hapd, WPA_ALG_NONE, ((void*)0), i,
     0, ((void*)0), 0, ((void*)0), 0)) {
   wpa_printf(MSG_DEBUG, "Failed to clear default "
       "encryption keys (ifname=%s keyidx=%d)",
       ifname, i);
  }
 }
}
