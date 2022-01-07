
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int const chacha20_poly1305 ;

const EVP_CIPHER *EVP_chacha20_poly1305(void)
{
    return(&chacha20_poly1305);
}
