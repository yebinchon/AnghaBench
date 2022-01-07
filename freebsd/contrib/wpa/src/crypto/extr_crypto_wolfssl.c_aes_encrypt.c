
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int wc_AesEncryptDirect (void*,int *,int const*) ;

int aes_encrypt(void *ctx, const u8 *plain, u8 *crypt)
{
 wc_AesEncryptDirect(ctx, crypt, plain);
 return 0;
}
