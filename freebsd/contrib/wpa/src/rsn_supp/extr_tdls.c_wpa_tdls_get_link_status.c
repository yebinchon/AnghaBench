
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_tdls_peer {int tpk_success; int addr; struct wpa_tdls_peer* next; } ;
struct wpa_sm {struct wpa_tdls_peer* tdls; int tdls_supported; scalar_t__ tdls_disabled; } ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;

const char * wpa_tdls_get_link_status(struct wpa_sm *sm, const u8 *addr)
{
 struct wpa_tdls_peer *peer;

 if (sm->tdls_disabled || !sm->tdls_supported)
  return "disabled";

 for (peer = sm->tdls; peer; peer = peer->next) {
  if (os_memcmp(peer->addr, addr, ETH_ALEN) == 0)
   break;
 }

 if (peer == ((void*)0))
  return "peer does not exist";

 if (!peer->tpk_success)
  return "peer not connected";

 return "connected";
}
