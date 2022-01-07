
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct linux_af_alg_skcipher {int dummy; } ;


 int linux_af_alg_skcipher_oper (struct linux_af_alg_skcipher*,int,int const*,int *) ;

int aes_encrypt(void *ctx, const u8 *plain, u8 *crypt)
{
 struct linux_af_alg_skcipher *skcipher = ctx;

 return linux_af_alg_skcipher_oper(skcipher, 1, plain, crypt);
}
