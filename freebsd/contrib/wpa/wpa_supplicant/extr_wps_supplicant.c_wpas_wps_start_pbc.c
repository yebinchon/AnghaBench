
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {scalar_t__ wps_fragment_size; TYPE_1__* go_params; scalar_t__ ap_iface; } ;
struct TYPE_4__ {scalar_t__ fragment_size; } ;
struct wpa_ssid {int temporary; int p2p_group; int pbss; int multi_ap_backhaul_sta; TYPE_2__ eap; scalar_t__ ssid_len; scalar_t__ ssid; } ;
typedef int phase1 ;
struct TYPE_3__ {int freq; int ssid; scalar_t__ ssid_len; } ;


 int MSG_DEBUG ;
 int WPS_EV_PBC_ACTIVE ;
 int WPS_PBC_WALK_TIME ;
 int eloop_register_timeout (int ,int ,int ,struct wpa_supplicant*,int *) ;
 int os_memcpy (scalar_t__,int ,scalar_t__) ;
 int os_snprintf (char*,int,char*,char*) ;
 scalar_t__ os_zalloc (scalar_t__) ;
 scalar_t__ wpa_config_set_quoted (struct wpa_ssid*,char*,char*) ;
 int wpa_hexdump_ascii (int ,char*,scalar_t__,scalar_t__) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_wps_event (struct wpa_supplicant*,int ,int *) ;
 int wpas_clear_wps (struct wpa_supplicant*) ;
 struct wpa_ssid* wpas_wps_add_network (struct wpa_supplicant*,int ,int *,int const*) ;
 int wpas_wps_reassoc (struct wpa_supplicant*,struct wpa_ssid*,int const*,int ) ;
 int wpas_wps_timeout ;

int wpas_wps_start_pbc(struct wpa_supplicant *wpa_s, const u8 *bssid,
         int p2p_group, int multi_ap_backhaul_sta)
{
 struct wpa_ssid *ssid;
 char phase1[32];
 wpas_clear_wps(wpa_s);
 ssid = wpas_wps_add_network(wpa_s, 0, ((void*)0), bssid);
 if (ssid == ((void*)0))
  return -1;
 ssid->temporary = 1;
 ssid->p2p_group = p2p_group;





 if (!p2p_group)
  ssid->pbss = 2;
 os_snprintf(phase1, sizeof(phase1), "pbc=1%s",
      multi_ap_backhaul_sta ? " multi_ap=1" : "");
 if (wpa_config_set_quoted(ssid, "phase1", phase1) < 0)
  return -1;
 if (wpa_s->wps_fragment_size)
  ssid->eap.fragment_size = wpa_s->wps_fragment_size;
 if (multi_ap_backhaul_sta)
  ssid->multi_ap_backhaul_sta = 1;
 wpa_supplicant_wps_event(wpa_s, WPS_EV_PBC_ACTIVE, ((void*)0));
 eloop_register_timeout(WPS_PBC_WALK_TIME, 0, wpas_wps_timeout,
          wpa_s, ((void*)0));
 wpas_wps_reassoc(wpa_s, ssid, bssid, 0);
 return 0;
}
