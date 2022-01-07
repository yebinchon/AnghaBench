
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int ifindex; int ifname; } ;
union wpa_event_data {TYPE_2__ interface_status; } ;
struct wpa_priv_interface {int ifname; int drv_priv; TYPE_1__* driver; struct wpa_priv_interface* next; } ;
struct wpa_priv_global {struct wpa_priv_interface* interfaces; } ;
typedef enum wpa_event_type { ____Placeholder_wpa_event_type } wpa_event_type ;
struct TYPE_3__ {unsigned int (* get_ifindex ) (int ) ;} ;


 int EVENT_INTERFACE_STATUS ;
 int MSG_DEBUG ;
 scalar_t__ os_strcmp (int ,int ) ;
 unsigned int stub1 (int ) ;
 int wpa_printf (int ,char*,int ,unsigned int,unsigned int) ;
 int wpa_supplicant_event (struct wpa_priv_interface*,int,union wpa_event_data*) ;

void wpa_supplicant_event_global(void *ctx, enum wpa_event_type event,
     union wpa_event_data *data)
{
 struct wpa_priv_global *global = ctx;
 struct wpa_priv_interface *iface;

 if (event != EVENT_INTERFACE_STATUS)
  return;

 for (iface = global->interfaces; iface; iface = iface->next) {
  if (os_strcmp(iface->ifname, data->interface_status.ifname) ==
      0)
   break;
 }
 if (iface && iface->driver->get_ifindex) {
  unsigned int ifindex;

  ifindex = iface->driver->get_ifindex(iface->drv_priv);
  if (ifindex != data->interface_status.ifindex) {
   wpa_printf(MSG_DEBUG,
       "%s: interface status ifindex %d mismatch (%d)",
       iface->ifname, ifindex,
       data->interface_status.ifindex);
   return;
  }
 }
 if (iface)
  wpa_supplicant_event(iface, event, data);
}
