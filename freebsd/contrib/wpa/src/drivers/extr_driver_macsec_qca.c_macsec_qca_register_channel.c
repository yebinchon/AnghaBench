
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ieee802_1x_mka_sci {int dummy; } ;
struct channel_map {int sci; } ;


 int os_memcpy (int *,struct ieee802_1x_mka_sci*,int) ;

__attribute__((used)) static void macsec_qca_register_channel(struct channel_map *map,
     struct ieee802_1x_mka_sci *sci,
     u32 channel)
{
 os_memcpy(&map[channel].sci, sci, sizeof(struct ieee802_1x_mka_sci));
}
