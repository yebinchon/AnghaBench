
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AES_KEY ;


 int const AES_DECRYPT ;
 int const AES_ENCRYPT ;
 int AES_decrypt (unsigned char const*,unsigned char*,int const*) ;
 int AES_encrypt (unsigned char const*,unsigned char*,int const*) ;
 int assert (int) ;

void AES_ecb_encrypt(const unsigned char *in, unsigned char *out,
                     const AES_KEY *key, const int enc)
{

    assert(in && out && key);
    assert((AES_ENCRYPT == enc) || (AES_DECRYPT == enc));

    if (AES_ENCRYPT == enc)
        AES_encrypt(in, out, key);
    else
        AES_decrypt(in, out, key);
}
