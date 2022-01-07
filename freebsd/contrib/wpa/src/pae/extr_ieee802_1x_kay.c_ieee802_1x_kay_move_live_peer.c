
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct receive_sc {int list; scalar_t__ expire; int mn; int sci; } ;
struct ieee802_1x_mka_participant {int rxsc_list; int live_peers; int kay; int current_peer_sci; } ;
struct ieee802_1x_kay_peer {int list; scalar_t__ expire; int mn; int sci; } ;


 int MKA_LIFE_TIME ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int dl_list_add (int *,int *) ;
 int dl_list_add_tail (int *,int *) ;
 int dl_list_del (int *) ;
 int ieee802_1x_kay_dump_peer (struct receive_sc*) ;
 struct receive_sc* ieee802_1x_kay_get_potential_peer (struct ieee802_1x_mka_participant*,int *) ;
 struct receive_sc* ieee802_1x_kay_init_receive_sc (int *) ;
 int os_free (struct receive_sc*) ;
 int os_memcpy (int *,int *,int) ;
 scalar_t__ secy_create_receive_sc (int ,struct receive_sc*) ;
 scalar_t__ time (int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct ieee802_1x_kay_peer *
ieee802_1x_kay_move_live_peer(struct ieee802_1x_mka_participant *participant,
         u8 *mi, u32 mn)
{
 struct ieee802_1x_kay_peer *peer;
 struct receive_sc *rxsc;

 peer = ieee802_1x_kay_get_potential_peer(participant, mi);
 if (!peer)
  return ((void*)0);

 rxsc = ieee802_1x_kay_init_receive_sc(&participant->current_peer_sci);
 if (!rxsc)
  return ((void*)0);

 os_memcpy(&peer->sci, &participant->current_peer_sci,
    sizeof(peer->sci));
 peer->mn = mn;
 peer->expire = time(((void*)0)) + MKA_LIFE_TIME / 1000;

 wpa_printf(MSG_DEBUG, "KaY: Move potential peer to live peer");
 ieee802_1x_kay_dump_peer(peer);

 dl_list_del(&peer->list);
 if (secy_create_receive_sc(participant->kay, rxsc)) {
  wpa_printf(MSG_ERROR, "KaY: Can't create SC, discard peer");
  os_free(rxsc);
  os_free(peer);
  return ((void*)0);
 }
 dl_list_add_tail(&participant->live_peers, &peer->list);

 dl_list_add(&participant->rxsc_list, &rxsc->list);

 return peer;
}
