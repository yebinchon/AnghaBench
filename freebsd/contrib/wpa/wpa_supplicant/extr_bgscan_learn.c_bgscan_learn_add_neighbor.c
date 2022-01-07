
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bgscan_learn_bss {int num_neigh; int * neigh; int bssid; } ;


 int ETH_ALEN ;
 scalar_t__ bssid_in_array (int *,int,int const*) ;
 scalar_t__ os_memcmp (int ,int const*,int) ;
 int os_memcpy (int *,int const*,int) ;
 int * os_realloc_array (int *,int,int) ;

__attribute__((used)) static void bgscan_learn_add_neighbor(struct bgscan_learn_bss *bss,
          const u8 *bssid)
{
 u8 *n;

 if (os_memcmp(bss->bssid, bssid, ETH_ALEN) == 0)
  return;
 if (bssid_in_array(bss->neigh, bss->num_neigh, bssid))
  return;

 n = os_realloc_array(bss->neigh, bss->num_neigh + 1, ETH_ALEN);
 if (n == ((void*)0))
  return;

 os_memcpy(n + bss->num_neigh * ETH_ALEN, bssid, ETH_ALEN);
 bss->neigh = n;
 bss->num_neigh++;
}
