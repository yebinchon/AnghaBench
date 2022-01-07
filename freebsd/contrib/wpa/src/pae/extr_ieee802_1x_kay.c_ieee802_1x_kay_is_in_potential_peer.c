
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802_1x_mka_participant {int dummy; } ;
typedef int Boolean ;


 int * ieee802_1x_kay_get_potential_peer (struct ieee802_1x_mka_participant*,int const*) ;

__attribute__((used)) static Boolean
ieee802_1x_kay_is_in_potential_peer(
 struct ieee802_1x_mka_participant *participant, const u8 *mi)
{
 return ieee802_1x_kay_get_potential_peer(participant, mi) != ((void*)0);
}
