
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ievent; int ifname; } ;
union wpa_event_data {TYPE_1__ interface_status; } ;
struct wpa_supplicant {int interface_removed; int drv_flags; TYPE_4__* global; int matched; struct wpa_supplicant* parent; int * l2; TYPE_2__* conf; int ifname; } ;
struct TYPE_7__ {int conf_p2p_dev; } ;
struct TYPE_8__ {int ifaces; struct wpa_supplicant* p2p_init_wpa_s; int p2p; TYPE_3__ params; int p2p_disabled; } ;
struct TYPE_6__ {int p2p_disabled; } ;




 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_DRIVER_FLAGS_DEDICATED_P2P_DEVICE ;
 int WPA_INTERFACE_DISABLED ;
 int any_interfaces (int ) ;
 int eloop_terminate () ;
 int l2_packet_deinit (int *) ;
 scalar_t__ os_strcmp (int ,int ) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_driver_init (struct wpa_supplicant*) ;
 int wpa_supplicant_mark_disassoc (struct wpa_supplicant*) ;
 int wpa_supplicant_remove_iface (TYPE_4__*,struct wpa_supplicant*,int ) ;
 int wpa_supplicant_set_state (struct wpa_supplicant*,int ) ;
 int wpas_p2p_add_p2pdev_interface (struct wpa_supplicant*,int ) ;

__attribute__((used)) static void
wpa_supplicant_event_interface_status(struct wpa_supplicant *wpa_s,
          union wpa_event_data *data)
{
 if (os_strcmp(wpa_s->ifname, data->interface_status.ifname) != 0)
  return;

 switch (data->interface_status.ievent) {
 case 129:
  if (!wpa_s->interface_removed)
   break;
  wpa_s->interface_removed = 0;
  wpa_dbg(wpa_s, MSG_DEBUG, "Configured interface was added");
  if (wpa_supplicant_driver_init(wpa_s) < 0) {
   wpa_msg(wpa_s, MSG_INFO, "Failed to initialize the "
    "driver after interface was added");
  }
  break;
 case 128:
  wpa_dbg(wpa_s, MSG_DEBUG, "Configured interface was removed");
  wpa_s->interface_removed = 1;
  wpa_supplicant_mark_disassoc(wpa_s);
  wpa_supplicant_set_state(wpa_s, WPA_INTERFACE_DISABLED);
  l2_packet_deinit(wpa_s->l2);
  wpa_s->l2 = ((void*)0);
  break;
 }
}
