
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm_ctx {int deauthenticate; int cancel_auth_timeout; int mlme_setprotection; int get_network_ctx; int set_key; int alloc_eapol; int get_beacon_ie; int ether_send; int get_state; int set_state; int msg_ctx; struct ibss_rsn_peer* ctx; } ;
struct ibss_rsn_peer {int supp_ie_len; int addr; int * supp; int supp_ie; TYPE_1__* ibss_rsn; } ;
struct TYPE_2__ {int wpa_s; } ;


 int MSG_DEBUG ;
 int PMK_LEN ;
 int WPA_CIPHER_CCMP ;
 int WPA_KEY_MGMT_PSK ;
 int WPA_PARAM_GROUP ;
 int WPA_PARAM_KEY_MGMT ;
 int WPA_PARAM_PAIRWISE ;
 int WPA_PARAM_PROTO ;
 int WPA_PARAM_RSN_ENABLED ;
 int WPA_PROTO_RSN ;
 int os_free (struct wpa_sm_ctx*) ;
 struct wpa_sm_ctx* os_zalloc (int) ;
 int supp_alloc_eapol ;
 int supp_cancel_auth_timeout ;
 int supp_deauthenticate ;
 int supp_ether_send ;
 int supp_get_beacon_ie ;
 int supp_get_network_ctx ;
 int supp_get_state ;
 int supp_mlme_setprotection ;
 int supp_set_key ;
 int supp_set_state ;
 int wpa_printf (int ,char*) ;
 int * wpa_sm_init (struct wpa_sm_ctx*) ;
 int wpa_sm_notify_assoc (int *,int ) ;
 scalar_t__ wpa_sm_set_assoc_wpa_ie_default (int *,int ,int*) ;
 int wpa_sm_set_own_addr (int *,int const*) ;
 int wpa_sm_set_param (int *,int ,int) ;
 int wpa_sm_set_pmk (int *,int const*,int ,int *,int *) ;

__attribute__((used)) static int ibss_rsn_supp_init(struct ibss_rsn_peer *peer, const u8 *own_addr,
         const u8 *psk)
{
 struct wpa_sm_ctx *ctx = os_zalloc(sizeof(*ctx));
 if (ctx == ((void*)0))
  return -1;

 ctx->ctx = peer;
 ctx->msg_ctx = peer->ibss_rsn->wpa_s;
 ctx->set_state = supp_set_state;
 ctx->get_state = supp_get_state;
 ctx->ether_send = supp_ether_send;
 ctx->get_beacon_ie = supp_get_beacon_ie;
 ctx->alloc_eapol = supp_alloc_eapol;
 ctx->set_key = supp_set_key;
 ctx->get_network_ctx = supp_get_network_ctx;
 ctx->mlme_setprotection = supp_mlme_setprotection;
 ctx->cancel_auth_timeout = supp_cancel_auth_timeout;
 ctx->deauthenticate = supp_deauthenticate;
 peer->supp = wpa_sm_init(ctx);
 if (peer->supp == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "SUPP: wpa_sm_init() failed");
  os_free(ctx);
  return -1;
 }

 wpa_sm_set_own_addr(peer->supp, own_addr);
 wpa_sm_set_param(peer->supp, WPA_PARAM_RSN_ENABLED, 1);
 wpa_sm_set_param(peer->supp, WPA_PARAM_PROTO, WPA_PROTO_RSN);
 wpa_sm_set_param(peer->supp, WPA_PARAM_PAIRWISE, WPA_CIPHER_CCMP);
 wpa_sm_set_param(peer->supp, WPA_PARAM_GROUP, WPA_CIPHER_CCMP);
 wpa_sm_set_param(peer->supp, WPA_PARAM_KEY_MGMT, WPA_KEY_MGMT_PSK);
 wpa_sm_set_pmk(peer->supp, psk, PMK_LEN, ((void*)0), ((void*)0));

 peer->supp_ie_len = sizeof(peer->supp_ie);
 if (wpa_sm_set_assoc_wpa_ie_default(peer->supp, peer->supp_ie,
         &peer->supp_ie_len) < 0) {
  wpa_printf(MSG_DEBUG, "SUPP: wpa_sm_set_assoc_wpa_ie_default()"
      " failed");
  return -1;
 }

 wpa_sm_notify_assoc(peer->supp, peer->addr);

 return 0;
}
