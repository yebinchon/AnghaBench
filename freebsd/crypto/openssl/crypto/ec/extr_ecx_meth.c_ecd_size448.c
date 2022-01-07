
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int ED448_SIGSIZE ;

__attribute__((used)) static int ecd_size448(const EVP_PKEY *pkey)
{
    return ED448_SIGSIZE;
}
