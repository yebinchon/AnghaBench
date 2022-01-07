
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int const*,int const*,int) ;
 int os_memcpy (int *,int const*,int) ;

__attribute__((used)) static void joint_two_mac(const u8 *mac1, const u8 *mac2, u8 *out)
{
 if (os_memcmp(mac1, mac2, ETH_ALEN) < 0) {
  os_memcpy(out, mac1, ETH_ALEN);
  os_memcpy(out + ETH_ALEN, mac2, ETH_ALEN);
 } else {
  os_memcpy(out, mac2, ETH_ALEN);
  os_memcpy(out + ETH_ALEN, mac1, ETH_ALEN);
 }
}
