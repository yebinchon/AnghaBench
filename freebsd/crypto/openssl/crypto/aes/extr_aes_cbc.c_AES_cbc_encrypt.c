
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block128_f ;
typedef int AES_KEY ;


 scalar_t__ AES_decrypt ;
 scalar_t__ AES_encrypt ;
 int CRYPTO_cbc128_decrypt (unsigned char const*,unsigned char*,size_t,int const*,unsigned char*,int ) ;
 int CRYPTO_cbc128_encrypt (unsigned char const*,unsigned char*,size_t,int const*,unsigned char*,int ) ;

void AES_cbc_encrypt(const unsigned char *in, unsigned char *out,
                     size_t len, const AES_KEY *key,
                     unsigned char *ivec, const int enc)
{

    if (enc)
        CRYPTO_cbc128_encrypt(in, out, len, key, ivec,
                              (block128_f) AES_encrypt);
    else
        CRYPTO_cbc128_decrypt(in, out, len, key, ivec,
                              (block128_f) AES_decrypt);
}
