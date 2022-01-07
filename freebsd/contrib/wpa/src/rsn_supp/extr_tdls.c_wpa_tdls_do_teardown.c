
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpa_tdls_peer {int addr; } ;
struct wpa_sm {int dummy; } ;


 int wpa_tdls_disable_peer_link (struct wpa_sm*,struct wpa_tdls_peer*) ;
 int wpa_tdls_send_teardown (struct wpa_sm*,int ,int ) ;

__attribute__((used)) static int wpa_tdls_do_teardown(struct wpa_sm *sm, struct wpa_tdls_peer *peer,
    u16 reason_code)
{
 int ret;

 ret = wpa_tdls_send_teardown(sm, peer->addr, reason_code);

 wpa_tdls_disable_peer_link(sm, peer);

 return ret;
}
