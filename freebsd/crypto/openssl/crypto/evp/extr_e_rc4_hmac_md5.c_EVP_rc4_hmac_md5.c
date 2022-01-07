
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int const r4_hmac_md5_cipher ;

const EVP_CIPHER *EVP_rc4_hmac_md5(void)
{
    return &r4_hmac_md5_cipher;
}
