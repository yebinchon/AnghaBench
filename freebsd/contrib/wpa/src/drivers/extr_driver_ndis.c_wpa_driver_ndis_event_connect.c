
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_ndis_data {int ctx; int bssid; } ;


 int EVENT_ASSOC ;
 int MSG_DEBUG ;
 int wpa_driver_ndis_get_associnfo (struct wpa_driver_ndis_data*) ;
 scalar_t__ wpa_driver_ndis_get_bssid (struct wpa_driver_ndis_data*,int ) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_event (int ,int ,int *) ;

void wpa_driver_ndis_event_connect(struct wpa_driver_ndis_data *drv)
{
 wpa_printf(MSG_DEBUG, "NDIS: Media Connect Event");
 if (wpa_driver_ndis_get_bssid(drv, drv->bssid) == 0) {
  wpa_driver_ndis_get_associnfo(drv);
  wpa_supplicant_event(drv->ctx, EVENT_ASSOC, ((void*)0));
 }
}
