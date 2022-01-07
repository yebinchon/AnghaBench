
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee802_1x_mka_sci {int port; int addr; } ;


 int ETH_ALEN ;
 int os_memcpy (int ,int ,int ) ;

u64 mka_sci_u64(struct ieee802_1x_mka_sci *sci)
{
 struct ieee802_1x_mka_sci tmp;

 os_memcpy(tmp.addr, sci->addr, ETH_ALEN);
 tmp.port = sci->port;

 return *((u64 *) &tmp);
}
