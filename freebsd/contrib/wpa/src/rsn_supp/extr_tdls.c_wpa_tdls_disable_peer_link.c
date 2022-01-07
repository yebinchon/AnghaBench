
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_tdls_peer {int addr; } ;
struct wpa_sm {int dummy; } ;


 int TDLS_DISABLE_LINK ;
 int wpa_sm_tdls_oper (struct wpa_sm*,int ,int ) ;
 int wpa_tdls_peer_free (struct wpa_sm*,struct wpa_tdls_peer*) ;

__attribute__((used)) static void wpa_tdls_disable_peer_link(struct wpa_sm *sm,
           struct wpa_tdls_peer *peer)
{
 wpa_sm_tdls_oper(sm, TDLS_DISABLE_LINK, peer->addr);
 wpa_tdls_peer_free(sm, peer);
}
