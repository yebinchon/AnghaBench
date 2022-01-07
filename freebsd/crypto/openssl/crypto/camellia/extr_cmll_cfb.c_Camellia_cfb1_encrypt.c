
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block128_f ;
typedef int CAMELLIA_KEY ;


 int CRYPTO_cfb128_1_encrypt (unsigned char const*,unsigned char*,size_t,int const*,unsigned char*,int*,int const,int ) ;
 scalar_t__ Camellia_encrypt ;

void Camellia_cfb1_encrypt(const unsigned char *in, unsigned char *out,
                           size_t length, const CAMELLIA_KEY *key,
                           unsigned char *ivec, int *num, const int enc)
{
    CRYPTO_cfb128_1_encrypt(in, out, length, key, ivec, num, enc,
                            (block128_f) Camellia_encrypt);
}
