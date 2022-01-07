
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block128_f ;
typedef int AES_KEY ;


 scalar_t__ AES_encrypt ;
 int CRYPTO_128_wrap (int *,unsigned char const*,unsigned char*,unsigned char const*,unsigned int,int ) ;

int AES_wrap_key(AES_KEY *key, const unsigned char *iv,
                 unsigned char *out,
                 const unsigned char *in, unsigned int inlen)
{
    return CRYPTO_128_wrap(key, iv, out, in, inlen, (block128_f) AES_encrypt);
}
