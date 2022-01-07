
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wpa_tdls_peer {int tpk_success; int lifetime; int addr; scalar_t__ reconfig_key; scalar_t__ initiator; scalar_t__ tpk_in_progress; } ;
struct wpa_sm {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int TDLS_ENABLE_LINK ;
 int TDLS_TESTING_NO_TPK_EXPIRATION ;
 int eloop_cancel_timeout (int ,struct wpa_sm*,struct wpa_tdls_peer*) ;
 int eloop_register_timeout (int,int ,int ,struct wpa_sm*,struct wpa_tdls_peer*) ;
 int tdls_testing ;
 int wpa_printf (int ,char*) ;
 int wpa_sm_tdls_oper (struct wpa_sm*,int ,int ) ;
 scalar_t__ wpa_tdls_get_privacy (struct wpa_sm*) ;
 scalar_t__ wpa_tdls_set_key (struct wpa_sm*,struct wpa_tdls_peer*) ;
 int wpa_tdls_tpk_timeout ;

__attribute__((used)) static int wpa_tdls_enable_link(struct wpa_sm *sm, struct wpa_tdls_peer *peer)
{
 peer->tpk_success = 1;
 peer->tpk_in_progress = 0;
 eloop_cancel_timeout(wpa_tdls_tpk_timeout, sm, peer);
 if (wpa_tdls_get_privacy(sm)) {
  u32 lifetime = peer->lifetime;




  if (lifetime > 3 && peer->initiator)
   lifetime -= 3;
  eloop_register_timeout(lifetime, 0, wpa_tdls_tpk_timeout,
           sm, peer);







 }

 if (peer->reconfig_key && wpa_tdls_set_key(sm, peer) < 0) {
  wpa_printf(MSG_INFO, "TDLS: Could not configure key to the "
      "driver");
  return -1;
 }
 peer->reconfig_key = 0;

 return wpa_sm_tdls_oper(sm, TDLS_ENABLE_LINK, peer->addr);
}
