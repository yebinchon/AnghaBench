
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802_1x_mka_participant {int dummy; } ;
struct ieee802_1x_kay_peer {int dummy; } ;


 struct ieee802_1x_kay_peer* ieee802_1x_kay_get_live_peer (struct ieee802_1x_mka_participant*,int const*) ;
 struct ieee802_1x_kay_peer* ieee802_1x_kay_get_potential_peer (struct ieee802_1x_mka_participant*,int const*) ;

__attribute__((used)) static struct ieee802_1x_kay_peer *
ieee802_1x_kay_get_peer(struct ieee802_1x_mka_participant *participant,
   const u8 *mi)
{
 struct ieee802_1x_kay_peer *peer;

 peer = ieee802_1x_kay_get_live_peer(participant, mi);
 if (peer)
  return peer;

 return ieee802_1x_kay_get_potential_peer(participant, mi);
}
