
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_tdls_peer {int tpk_in_progress; int initiator; int addr; } ;
struct wpa_sm {int tdls_prohibited; int tdls_supported; scalar_t__ tdls_disabled; } ;


 int MSG_DEBUG ;
 int TDLS_TESTING_IGNORE_AP_PROHIBIT ;
 int tdls_testing ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpa_sm_tdls_peer_addset (struct wpa_sm*,int ,int,int ,int ,int *,int ,int *,int *,int ,int ,int *,int ,int *,int ,int *,int ) ;
 struct wpa_tdls_peer* wpa_tdls_add_peer (struct wpa_sm*,int const*,int *) ;
 int wpa_tdls_disable_peer_link (struct wpa_sm*,struct wpa_tdls_peer*) ;
 scalar_t__ wpa_tdls_send_tpk_m1 (struct wpa_sm*,struct wpa_tdls_peer*) ;

int wpa_tdls_start(struct wpa_sm *sm, const u8 *addr)
{
 struct wpa_tdls_peer *peer;
 int tdls_prohibited = sm->tdls_prohibited;

 if (sm->tdls_disabled || !sm->tdls_supported)
  return -1;
 if (tdls_prohibited) {
  wpa_printf(MSG_DEBUG, "TDLS: TDLS is prohibited in this BSS - "
      "reject request to start setup");
  return -1;
 }

 peer = wpa_tdls_add_peer(sm, addr, ((void*)0));
 if (peer == ((void*)0))
  return -1;

 if (peer->tpk_in_progress) {
  wpa_printf(MSG_DEBUG, "TDLS: Setup is already in progress with the peer");
  return 0;
 }

 peer->initiator = 1;


 if (wpa_sm_tdls_peer_addset(sm, peer->addr, 1, 0, 0, ((void*)0), 0, ((void*)0),
        ((void*)0), 0, 0, ((void*)0), 0, ((void*)0), 0, ((void*)0), 0)) {
  wpa_tdls_disable_peer_link(sm, peer);
  return -1;
 }

 peer->tpk_in_progress = 1;

 if (wpa_tdls_send_tpk_m1(sm, peer) < 0) {
  wpa_tdls_disable_peer_link(sm, peer);
  return -1;
 }

 return 0;
}
