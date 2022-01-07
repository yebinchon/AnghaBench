
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {int drv_flags; TYPE_1__** bss; int current_mode; } ;
typedef enum hostapd_chan_status { ____Placeholder_hostapd_chan_status } hostapd_chan_status ;
struct TYPE_2__ {int msg_ctx; } ;


 int ACS_EVENT_STARTED ;
 int HAPD_IFACE_ACS ;
 int HOSTAPD_CHAN_ACS ;
 int HOSTAPD_CHAN_INVALID ;
 int MSG_INFO ;
 int WPA_DRIVER_FLAGS_ACS_OFFLOAD ;
 int acs_cleanup (struct hostapd_iface*) ;
 scalar_t__ acs_request_scan (struct hostapd_iface*) ;
 scalar_t__ hostapd_drv_do_acs (TYPE_1__*) ;
 int hostapd_set_state (struct hostapd_iface*,int ) ;
 int wpa_msg (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;

enum hostapd_chan_status acs_init(struct hostapd_iface *iface)
{
 wpa_printf(MSG_INFO, "ACS: Automatic channel selection started, this may take a bit");

 if (iface->drv_flags & WPA_DRIVER_FLAGS_ACS_OFFLOAD) {
  wpa_printf(MSG_INFO, "ACS: Offloading to driver");
  if (hostapd_drv_do_acs(iface->bss[0]))
   return HOSTAPD_CHAN_INVALID;
  return HOSTAPD_CHAN_ACS;
 }

 if (!iface->current_mode)
  return HOSTAPD_CHAN_INVALID;

 acs_cleanup(iface);

 if (acs_request_scan(iface) < 0)
  return HOSTAPD_CHAN_INVALID;

 hostapd_set_state(iface, HAPD_IFACE_ACS);
 wpa_msg(iface->bss[0]->msg_ctx, MSG_INFO, ACS_EVENT_STARTED);

 return HOSTAPD_CHAN_ACS;
}
