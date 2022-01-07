
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int aes_kdf (int const*,size_t,char*,int const*,size_t,size_t,int *) ;

int ieee802_1x_sak_aes_cmac(const u8 *cak, size_t cak_bytes, const u8 *ctx,
       size_t ctx_bytes, u8 *sak, size_t sak_bytes)
{
 return aes_kdf(cak, cak_bytes * 8, "IEEE8021 SAK", ctx, ctx_bytes * 8,
         sak_bytes * 8, sak);
}
