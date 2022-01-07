
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_tdls_peer {int dummy; } ;
struct wpa_sm {int dummy; } ;


 int os_free (struct wpa_tdls_peer*) ;
 int wpa_tdls_peer_clear (struct wpa_sm*,struct wpa_tdls_peer*) ;
 int wpa_tdls_peer_remove_from_list (struct wpa_sm*,struct wpa_tdls_peer*) ;

__attribute__((used)) static void wpa_tdls_peer_free(struct wpa_sm *sm, struct wpa_tdls_peer *peer)
{
 wpa_tdls_peer_clear(sm, peer);
 wpa_tdls_peer_remove_from_list(sm, peer);
 os_free(peer);
}
