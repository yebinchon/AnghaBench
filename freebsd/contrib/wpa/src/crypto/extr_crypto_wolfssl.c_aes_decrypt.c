
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int wc_AesDecryptDirect (void*,int *,int const*) ;

int aes_decrypt(void *ctx, const u8 *crypt, u8 *plain)
{
 wc_AesDecryptDirect(ctx, plain, crypt);
 return 0;
}
