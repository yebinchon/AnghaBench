
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int const r2_40_cbc_cipher ;

const EVP_CIPHER *EVP_rc2_40_cbc(void)
{
    return &r2_40_cbc_cipher;
}
