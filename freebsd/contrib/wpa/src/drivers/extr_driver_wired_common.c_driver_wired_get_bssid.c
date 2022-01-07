
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETH_ALEN ;
 int os_memcpy (int *,int ,int ) ;
 int pae_group_addr ;

int driver_wired_get_bssid(void *priv, u8 *bssid)
{

 os_memcpy(bssid, pae_group_addr, ETH_ALEN);
 return 0;
}
