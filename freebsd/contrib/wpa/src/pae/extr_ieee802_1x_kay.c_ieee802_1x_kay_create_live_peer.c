
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct receive_sc {int list; int sci; } ;
struct ieee802_1x_mka_participant {int rxsc_list; int live_peers; int kay; int current_peer_sci; } ;
struct ieee802_1x_kay_peer {int list; int sci; } ;


 int MSG_DEBUG ;
 int dl_list_add (int *,int *) ;
 struct receive_sc* ieee802_1x_kay_create_peer (int const*,int ) ;
 int ieee802_1x_kay_dump_peer (struct receive_sc*) ;
 struct receive_sc* ieee802_1x_kay_init_receive_sc (int *) ;
 int os_free (struct receive_sc*) ;
 int os_memcpy (int *,int *,int) ;
 scalar_t__ secy_create_receive_sc (int ,struct receive_sc*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct ieee802_1x_kay_peer *
ieee802_1x_kay_create_live_peer(struct ieee802_1x_mka_participant *participant,
    const u8 *mi, u32 mn)
{
 struct ieee802_1x_kay_peer *peer;
 struct receive_sc *rxsc;

 peer = ieee802_1x_kay_create_peer(mi, mn);
 if (!peer)
  return ((void*)0);

 os_memcpy(&peer->sci, &participant->current_peer_sci,
    sizeof(peer->sci));

 rxsc = ieee802_1x_kay_init_receive_sc(&peer->sci);
 if (!rxsc) {
  os_free(peer);
  return ((void*)0);
 }

 if (secy_create_receive_sc(participant->kay, rxsc)) {
  os_free(rxsc);
  os_free(peer);
  return ((void*)0);
 }
 dl_list_add(&participant->live_peers, &peer->list);
 dl_list_add(&participant->rxsc_list, &rxsc->list);

 wpa_printf(MSG_DEBUG, "KaY: Live peer created");
 ieee802_1x_kay_dump_peer(peer);

 return peer;
}
