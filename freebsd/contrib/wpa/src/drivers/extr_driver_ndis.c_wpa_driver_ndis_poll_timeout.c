
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_driver_ndis_data {scalar_t__ mode; int ctx; int bssid; scalar_t__ wired; } ;


 int ETH_ALEN ;
 int EVENT_ASSOC ;
 int EVENT_DISASSOC ;
 scalar_t__ IEEE80211_MODE_IBSS ;
 int eloop_register_timeout (int,int ,void (*) (void*,void*),struct wpa_driver_ndis_data*,int *) ;
 int is_zero_ether_addr (int ) ;
 scalar_t__ os_memcmp (int ,int *,int) ;
 int os_memcpy (int ,int *,int) ;
 int os_memset (int ,int ,int) ;
 int wpa_driver_ndis_get_associnfo (struct wpa_driver_ndis_data*) ;
 scalar_t__ wpa_driver_ndis_get_bssid (struct wpa_driver_ndis_data*,int *) ;
 int wpa_supplicant_event (int ,int ,int *) ;

__attribute__((used)) static void wpa_driver_ndis_poll_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_driver_ndis_data *drv = eloop_ctx;
 u8 bssid[ETH_ALEN];
 int poll;

 if (drv->wired)
  return;

 if (wpa_driver_ndis_get_bssid(drv, bssid)) {

  if (!is_zero_ether_addr(drv->bssid)) {
   os_memset(drv->bssid, 0, ETH_ALEN);
   wpa_supplicant_event(drv->ctx, EVENT_DISASSOC, ((void*)0));
  }
 } else {

  if (os_memcmp(drv->bssid, bssid, ETH_ALEN) != 0) {
   os_memcpy(drv->bssid, bssid, ETH_ALEN);
   wpa_driver_ndis_get_associnfo(drv);
   wpa_supplicant_event(drv->ctx, EVENT_ASSOC, ((void*)0));
  }
 }







 poll = drv->mode == IEEE80211_MODE_IBSS;


 poll = 1;



 if (poll) {
  eloop_register_timeout(1, 0, wpa_driver_ndis_poll_timeout,
     drv, ((void*)0));
 }
}
