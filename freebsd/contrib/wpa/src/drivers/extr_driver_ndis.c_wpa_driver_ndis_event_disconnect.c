
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_ndis_data {int ctx; int bssid; } ;


 int ETH_ALEN ;
 int EVENT_DISASSOC ;
 int MSG_DEBUG ;
 int os_memset (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_event (int ,int ,int *) ;

void wpa_driver_ndis_event_disconnect(struct wpa_driver_ndis_data *drv)
{
 wpa_printf(MSG_DEBUG, "NDIS: Media Disconnect Event");
 os_memset(drv->bssid, 0, ETH_ALEN);
 wpa_supplicant_event(drv->ctx, EVENT_DISASSOC, ((void*)0));
}
