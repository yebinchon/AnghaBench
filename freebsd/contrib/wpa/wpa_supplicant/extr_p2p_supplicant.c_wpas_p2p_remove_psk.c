
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* conf; int confname; } ;
struct wpa_ssid {int dummy; } ;
struct TYPE_2__ {scalar_t__ update_config; } ;


 int MSG_DEBUG ;
 scalar_t__ wpa_config_write (int ,TYPE_1__*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpas_p2p_remove_psk_entry (struct wpa_supplicant*,struct wpa_ssid*,int const*,int) ;

__attribute__((used)) static void wpas_p2p_remove_psk(struct wpa_supplicant *wpa_s,
    struct wpa_ssid *s, const u8 *addr,
    int iface_addr)
{
 int res;

 res = wpas_p2p_remove_psk_entry(wpa_s, s, addr, iface_addr);
 if (res > 0 && wpa_s->conf->update_config &&
     wpa_config_write(wpa_s->confname, wpa_s->conf))
  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P: Failed to update configuration");
}
