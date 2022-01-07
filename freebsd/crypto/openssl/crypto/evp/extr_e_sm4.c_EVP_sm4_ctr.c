
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int const sm4_ctr_mode ;

const EVP_CIPHER *EVP_sm4_ctr(void)
{
    return &sm4_ctr_mode;
}
