
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 void* linux_af_alg_skcipher (char*,int const*,size_t) ;

void * aes_decrypt_init(const u8 *key, size_t len)
{
 return linux_af_alg_skcipher("ecb(aes)", key, len);
}
