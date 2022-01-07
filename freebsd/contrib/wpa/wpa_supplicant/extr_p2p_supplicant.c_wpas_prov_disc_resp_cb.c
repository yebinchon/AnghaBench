
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
struct wpa_ssid {scalar_t__ mode; } ;
struct TYPE_2__ {unsigned int pending_p2ps_group_freq; scalar_t__ pending_p2ps_group; } ;


 int P2P_MAX_INITIAL_CONN_WAIT_GO_REINVOKE ;
 scalar_t__ WPAS_MODE_P2P_GO ;
 scalar_t__ wpas_p2p_get_go_group (struct wpa_supplicant*) ;
 struct wpa_ssid* wpas_p2p_get_persistent_go (struct wpa_supplicant*) ;
 int wpas_p2p_group_add (struct wpa_supplicant*,int,unsigned int,int ,int ,int ,int ,int ) ;
 int wpas_p2p_group_add_persistent (struct wpa_supplicant*,struct wpa_ssid*,int ,int ,int ,int ,int ,int ,int ,int ,int *,int ,int ) ;

__attribute__((used)) static int wpas_prov_disc_resp_cb(void *ctx)
{
 struct wpa_supplicant *wpa_s = ctx;
 struct wpa_ssid *persistent_go;
 unsigned int freq;

 if (!wpa_s->global->pending_p2ps_group)
  return 0;

 freq = wpa_s->global->pending_p2ps_group_freq;
 wpa_s->global->pending_p2ps_group_freq = 0;
 wpa_s->global->pending_p2ps_group = 0;

 if (wpas_p2p_get_go_group(wpa_s))
  return 0;
 persistent_go = wpas_p2p_get_persistent_go(wpa_s);

 if (persistent_go) {
  wpas_p2p_group_add_persistent(
   wpa_s, persistent_go, 0, 0, 0, 0, 0, 0, 0, 0, ((void*)0),
   persistent_go->mode == WPAS_MODE_P2P_GO ?
   P2P_MAX_INITIAL_CONN_WAIT_GO_REINVOKE : 0, 0);
 } else {
  wpas_p2p_group_add(wpa_s, 1, freq, 0, 0, 0, 0, 0);
 }

 return 1;
}
