
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int const md2_md ;

const EVP_MD *EVP_md2(void)
{
    return &md2_md;
}
