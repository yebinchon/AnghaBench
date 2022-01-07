
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int const aes_256_wrap ;

const EVP_CIPHER *EVP_aes_256_wrap(void)
{
    return &aes_256_wrap;
}
