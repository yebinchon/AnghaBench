
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block128_f ;
typedef int SM4_KEY ;


 int CRYPTO_cfb128_encrypt (unsigned char const*,unsigned char*,size_t,int const*,unsigned char*,int*,int const,int ) ;
 scalar_t__ SM4_encrypt ;

__attribute__((used)) static void sm4_cfb128_encrypt(const unsigned char *in, unsigned char *out,
                               size_t length, const SM4_KEY *key,
                               unsigned char *ivec, int *num, const int enc)
{
    CRYPTO_cfb128_encrypt(in, out, length, key, ivec, num, enc,
                          (block128_f)SM4_encrypt);
}
