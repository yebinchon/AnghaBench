
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct des_ctx {int dummy; } ;
typedef int ctx ;


 int DES_BLOCK_SIZE ;
 int nettle_des_encrypt (struct des_ctx*,int ,int*,int const*) ;
 int nettle_des_set_key (struct des_ctx*,int*) ;
 int os_memset (struct des_ctx*,int ,int) ;

int des_encrypt(const u8 *clear, const u8 *key, u8 *cypher)
{
 struct des_ctx ctx;
 u8 pkey[8], next, tmp;
 int i;


 next = 0;
 for (i = 0; i < 7; i++) {
  tmp = key[i];
  pkey[i] = (tmp >> i) | next | 1;
  next = tmp << (7 - i);
 }
 pkey[i] = next | 1;

 nettle_des_set_key(&ctx, pkey);
 nettle_des_encrypt(&ctx, DES_BLOCK_SIZE, cypher, clear);
 os_memset(&ctx, 0, sizeof(ctx));
 return 0;
}
