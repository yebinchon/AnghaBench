
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_mka_participant {int potential_peers; } ;
typedef int Boolean ;


 int dl_list_empty (int *) ;

__attribute__((used)) static Boolean
ieee802_1x_mka_potential_peer_body_present(
 struct ieee802_1x_mka_participant *participant)
{
 return !dl_list_empty(&participant->potential_peers);
}
