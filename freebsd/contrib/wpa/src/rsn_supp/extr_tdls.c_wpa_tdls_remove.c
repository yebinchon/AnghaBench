
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_tdls_peer {int tpk_success; int addr; struct wpa_tdls_peer* next; } ;
struct wpa_sm {scalar_t__ tdls_external_setup; struct wpa_tdls_peer* tdls; int tdls_supported; scalar_t__ tdls_disabled; } ;


 int ETH_ALEN ;
 int WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 int wpa_tdls_do_teardown (struct wpa_sm*,struct wpa_tdls_peer*,int ) ;

void wpa_tdls_remove(struct wpa_sm *sm, const u8 *addr)
{
 struct wpa_tdls_peer *peer;

 if (sm->tdls_disabled || !sm->tdls_supported)
  return;

 for (peer = sm->tdls; peer; peer = peer->next) {
  if (os_memcmp(peer->addr, addr, ETH_ALEN) == 0)
   break;
 }

 if (peer == ((void*)0) || !peer->tpk_success)
  return;

 if (sm->tdls_external_setup) {




  wpa_tdls_do_teardown(sm, peer,
         WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED);
 }
}
