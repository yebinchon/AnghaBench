
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block128_f ;
typedef int AES_KEY ;


 scalar_t__ AES_encrypt ;
 int CRYPTO_cfb128_8_encrypt (unsigned char const*,unsigned char*,size_t,int const*,unsigned char*,int*,int const,int ) ;

void AES_cfb8_encrypt(const unsigned char *in, unsigned char *out,
                      size_t length, const AES_KEY *key,
                      unsigned char *ivec, int *num, const int enc)
{
    CRYPTO_cfb128_8_encrypt(in, out, length, key, ivec, num, enc,
                            (block128_f) AES_encrypt);
}
