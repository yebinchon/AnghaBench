
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int symmetric_key ;


 scalar_t__ CRYPT_OK ;
 scalar_t__ aes_ecb_encrypt (int const*,int *,int *) ;

int aes_encrypt(void *ctx, const u8 *plain, u8 *crypt)
{
 symmetric_key *skey = ctx;
 return aes_ecb_encrypt(plain, crypt, skey) == CRYPT_OK ? 0 : -1;
}
