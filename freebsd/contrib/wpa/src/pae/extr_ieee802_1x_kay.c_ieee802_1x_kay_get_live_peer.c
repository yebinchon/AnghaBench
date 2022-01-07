
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802_1x_mka_participant {int live_peers; } ;
struct ieee802_1x_kay_peer {int dummy; } ;


 struct ieee802_1x_kay_peer* get_peer_mi (int *,int const*) ;

__attribute__((used)) static struct ieee802_1x_kay_peer *
ieee802_1x_kay_get_live_peer(struct ieee802_1x_mka_participant *participant,
        const u8 *mi)
{
 return get_peer_mi(&participant->live_peers, mi);
}
