
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t ETH_ALEN ;
 scalar_t__ os_memcmp (int *,int const*,size_t) ;

__attribute__((used)) static int bssid_in_array(u8 *array, size_t array_len, const u8 *bssid)
{
 size_t i;

 if (array == ((void*)0) || array_len == 0)
  return 0;

 for (i = 0; i < array_len; i++) {
  if (os_memcmp(array + i * ETH_ALEN, bssid, ETH_ALEN) == 0)
   return 1;
 }

 return 0;
}
