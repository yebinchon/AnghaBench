
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ievent; int ifname; } ;
union wpa_event_data {TYPE_1__ interface_status; } ;
struct wpa_driver_ndis_data {int ctx; int ifname; } ;
typedef int event ;


 int EVENT_INTERFACE_REMOVED ;
 int EVENT_INTERFACE_STATUS ;
 int MSG_DEBUG ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int os_strlcpy (int ,int ,int) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

void wpa_driver_ndis_event_adapter_removal(struct wpa_driver_ndis_data *drv)
{
 union wpa_event_data event;

 wpa_printf(MSG_DEBUG, "NDIS: Notify Adapter Removal");
 os_memset(&event, 0, sizeof(event));
 os_strlcpy(event.interface_status.ifname, drv->ifname,
     sizeof(event.interface_status.ifname));
 event.interface_status.ievent = EVENT_INTERFACE_REMOVED;
 wpa_supplicant_event(drv->ctx, EVENT_INTERFACE_STATUS, &event);
}
