
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SM4_KEY ;


 int SM4_decrypt (unsigned char const*,unsigned char*,int const*) ;
 int SM4_encrypt (unsigned char const*,unsigned char*,int const*) ;

__attribute__((used)) static void sm4_ecb_encrypt(const unsigned char *in, unsigned char *out,
                            const SM4_KEY *key, const int enc)
{
    if (enc)
        SM4_encrypt(in, out, key);
    else
        SM4_decrypt(in, out, key);
}
