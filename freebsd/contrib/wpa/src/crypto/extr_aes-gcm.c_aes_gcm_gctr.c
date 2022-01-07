
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AES_BLOCK_SIZE ;
 int aes_gctr (void*,int *,int const*,size_t,int *) ;
 int inc32 (int *) ;
 int os_memcpy (int *,int const*,int) ;

__attribute__((used)) static void aes_gcm_gctr(void *aes, const u8 *J0, const u8 *in, size_t len,
    u8 *out)
{
 u8 J0inc[AES_BLOCK_SIZE];

 if (len == 0)
  return;

 os_memcpy(J0inc, J0, AES_BLOCK_SIZE);
 inc32(J0inc);
 aes_gctr(aes, J0inc, in, len, out);
}
