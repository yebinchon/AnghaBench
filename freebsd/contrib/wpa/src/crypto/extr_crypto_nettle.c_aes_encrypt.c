
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aes_ctx {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int nettle_aes_encrypt (struct aes_ctx*,int ,int *,int const*) ;

int aes_encrypt(void *ctx, const u8 *plain, u8 *crypt)
{
 struct aes_ctx *actx = ctx;
 nettle_aes_encrypt(actx, AES_BLOCK_SIZE, crypt, plain);
 return 0;
}
