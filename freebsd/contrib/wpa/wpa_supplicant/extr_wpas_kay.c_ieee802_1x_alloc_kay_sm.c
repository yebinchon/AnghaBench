
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct ieee802_1x_kay* kay; int own_addr; int ifname; } ;
struct wpa_ssid {int macsec_policy; int macsec_integ_only; int mka_priority; int macsec_port; int macsec_replay_window; int macsec_replay_protect; } ;
struct ieee802_1x_kay_ctx {int disable_transmit_sa; int enable_transmit_sa; int delete_transmit_sa; int create_transmit_sa; int delete_transmit_sc; int create_transmit_sc; int disable_receive_sa; int enable_receive_sa; int delete_receive_sa; int create_receive_sa; int delete_receive_sc; int create_receive_sc; int set_receive_lowest_pn; int set_transmit_next_pn; int get_transmit_next_pn; int get_receive_lowest_pn; int enable_controlled_port; int set_current_cipher_suite; int set_replay_protect; int enable_encrypt; int enable_protect_frames; int macsec_get_capability; int macsec_deinit; int macsec_init; struct wpa_supplicant* ctx; } ;
struct ieee802_1x_kay {int dummy; } ;
typedef enum macsec_policy { ____Placeholder_macsec_policy } macsec_policy ;


 int DO_NOT_SECURE ;
 int SHOULD_ENCRYPT ;
 int SHOULD_SECURE ;
 int ieee802_1x_dealloc_kay_sm (struct wpa_supplicant*) ;
 struct ieee802_1x_kay* ieee802_1x_kay_init (struct ieee802_1x_kay_ctx*,int,int ,int ,int ,int ,int ,int ) ;
 struct ieee802_1x_kay_ctx* os_zalloc (int) ;
 int wpas_create_receive_sa ;
 int wpas_create_receive_sc ;
 int wpas_create_transmit_sa ;
 int wpas_create_transmit_sc ;
 int wpas_delete_receive_sa ;
 int wpas_delete_receive_sc ;
 int wpas_delete_transmit_sa ;
 int wpas_delete_transmit_sc ;
 int wpas_disable_receive_sa ;
 int wpas_disable_transmit_sa ;
 int wpas_enable_controlled_port ;
 int wpas_enable_encrypt ;
 int wpas_enable_protect_frames ;
 int wpas_enable_receive_sa ;
 int wpas_enable_transmit_sa ;
 int wpas_get_receive_lowest_pn ;
 int wpas_get_transmit_next_pn ;
 int wpas_macsec_deinit ;
 int wpas_macsec_get_capability ;
 int wpas_macsec_init ;
 int wpas_set_current_cipher_suite ;
 int wpas_set_receive_lowest_pn ;
 int wpas_set_replay_protect ;
 int wpas_set_transmit_next_pn ;

int ieee802_1x_alloc_kay_sm(struct wpa_supplicant *wpa_s, struct wpa_ssid *ssid)
{
 struct ieee802_1x_kay_ctx *kay_ctx;
 struct ieee802_1x_kay *res = ((void*)0);
 enum macsec_policy policy;

 ieee802_1x_dealloc_kay_sm(wpa_s);

 if (!ssid || ssid->macsec_policy == 0)
  return 0;

 if (ssid->macsec_policy == 1) {
  if (ssid->macsec_integ_only == 1)
   policy = SHOULD_SECURE;
  else
   policy = SHOULD_ENCRYPT;
 } else {
  policy = DO_NOT_SECURE;
 }

 kay_ctx = os_zalloc(sizeof(*kay_ctx));
 if (!kay_ctx)
  return -1;

 kay_ctx->ctx = wpa_s;

 kay_ctx->macsec_init = wpas_macsec_init;
 kay_ctx->macsec_deinit = wpas_macsec_deinit;
 kay_ctx->macsec_get_capability = wpas_macsec_get_capability;
 kay_ctx->enable_protect_frames = wpas_enable_protect_frames;
 kay_ctx->enable_encrypt = wpas_enable_encrypt;
 kay_ctx->set_replay_protect = wpas_set_replay_protect;
 kay_ctx->set_current_cipher_suite = wpas_set_current_cipher_suite;
 kay_ctx->enable_controlled_port = wpas_enable_controlled_port;
 kay_ctx->get_receive_lowest_pn = wpas_get_receive_lowest_pn;
 kay_ctx->get_transmit_next_pn = wpas_get_transmit_next_pn;
 kay_ctx->set_transmit_next_pn = wpas_set_transmit_next_pn;
 kay_ctx->set_receive_lowest_pn = wpas_set_receive_lowest_pn;
 kay_ctx->create_receive_sc = wpas_create_receive_sc;
 kay_ctx->delete_receive_sc = wpas_delete_receive_sc;
 kay_ctx->create_receive_sa = wpas_create_receive_sa;
 kay_ctx->delete_receive_sa = wpas_delete_receive_sa;
 kay_ctx->enable_receive_sa = wpas_enable_receive_sa;
 kay_ctx->disable_receive_sa = wpas_disable_receive_sa;
 kay_ctx->create_transmit_sc = wpas_create_transmit_sc;
 kay_ctx->delete_transmit_sc = wpas_delete_transmit_sc;
 kay_ctx->create_transmit_sa = wpas_create_transmit_sa;
 kay_ctx->delete_transmit_sa = wpas_delete_transmit_sa;
 kay_ctx->enable_transmit_sa = wpas_enable_transmit_sa;
 kay_ctx->disable_transmit_sa = wpas_disable_transmit_sa;

 res = ieee802_1x_kay_init(kay_ctx, policy, ssid->macsec_replay_protect,
      ssid->macsec_replay_window, ssid->macsec_port,
      ssid->mka_priority, wpa_s->ifname,
      wpa_s->own_addr);

 if (res == ((void*)0))
  return -1;

 wpa_s->kay = res;

 return 0;
}
