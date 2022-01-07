
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int ec_bits (int const*) ;

__attribute__((used)) static int ec_security_bits(const EVP_PKEY *pkey)
{
    int ecbits = ec_bits(pkey);
    if (ecbits >= 512)
        return 256;
    if (ecbits >= 384)
        return 192;
    if (ecbits >= 256)
        return 128;
    if (ecbits >= 224)
        return 112;
    if (ecbits >= 160)
        return 80;
    return ecbits / 2;
}
