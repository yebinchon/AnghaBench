
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int os_memcpy (size_t*,size_t const*,int) ;

__attribute__((used)) static void aes_ccm_encr_start(size_t L, const u8 *nonce, u8 *a)
{

 a[0] = L - 1;
 os_memcpy(&a[1], nonce, 15 - L);
}
