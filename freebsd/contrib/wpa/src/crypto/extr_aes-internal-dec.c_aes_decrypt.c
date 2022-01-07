
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 size_t AES_PRIV_NR_POS ;
 int rijndaelDecrypt (void*,int ,int const*,int *) ;

int aes_decrypt(void *ctx, const u8 *crypt, u8 *plain)
{
 u32 *rk = ctx;
 rijndaelDecrypt(ctx, rk[AES_PRIV_NR_POS], crypt, plain);
 return 0;
}
