
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee802_1x_mka_participant {int potential_peers; } ;
struct ieee802_1x_kay_peer {int list; } ;


 int MSG_DEBUG ;
 int dl_list_add (int *,int *) ;
 struct ieee802_1x_kay_peer* ieee802_1x_kay_create_peer (int const*,int ) ;
 int ieee802_1x_kay_dump_peer (struct ieee802_1x_kay_peer*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct ieee802_1x_kay_peer *
ieee802_1x_kay_create_potential_peer(
 struct ieee802_1x_mka_participant *participant, const u8 *mi, u32 mn)
{
 struct ieee802_1x_kay_peer *peer;

 peer = ieee802_1x_kay_create_peer(mi, mn);
 if (!peer)
  return ((void*)0);

 dl_list_add(&participant->potential_peers, &peer->list);

 wpa_printf(MSG_DEBUG, "KaY: Potential peer created");
 ieee802_1x_kay_dump_peer(peer);

 return peer;
}
