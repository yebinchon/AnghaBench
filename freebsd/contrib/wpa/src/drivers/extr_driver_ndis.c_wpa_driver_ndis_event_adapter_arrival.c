
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ievent; int ifname; } ;
union wpa_event_data {TYPE_1__ interface_status; } ;
struct wpa_driver_ndis_data {int ctx; int ifname; } ;
typedef int event ;


 int EVENT_INTERFACE_ADDED ;
 int EVENT_INTERFACE_STATUS ;
 int MSG_DEBUG ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int os_sleep (int,int ) ;
 int os_strlcpy (int ,int ,int) ;
 int wpa_driver_ndis_adapter_close (struct wpa_driver_ndis_data*) ;
 scalar_t__ wpa_driver_ndis_adapter_init (struct wpa_driver_ndis_data*) ;
 scalar_t__ wpa_driver_ndis_adapter_open (struct wpa_driver_ndis_data*) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

void wpa_driver_ndis_event_adapter_arrival(struct wpa_driver_ndis_data *drv)
{
 union wpa_event_data event;
 int i;

 wpa_printf(MSG_DEBUG, "NDIS: Notify Adapter Arrival");

 for (i = 0; i < 30; i++) {

  wpa_driver_ndis_adapter_close(drv);
  if (wpa_driver_ndis_adapter_init(drv) < 0 ||
      wpa_driver_ndis_adapter_open(drv) < 0) {
   wpa_printf(MSG_DEBUG, "NDIS: Driver re-initialization "
       "(%d) failed", i);
   os_sleep(1, 0);
  } else {
   wpa_printf(MSG_DEBUG, "NDIS: Driver re-initialized");
   break;
  }
 }

 os_memset(&event, 0, sizeof(event));
 os_strlcpy(event.interface_status.ifname, drv->ifname,
     sizeof(event.interface_status.ifname));
 event.interface_status.ievent = EVENT_INTERFACE_ADDED;
 wpa_supplicant_event(drv->ctx, EVENT_INTERFACE_STATUS, &event);
}
