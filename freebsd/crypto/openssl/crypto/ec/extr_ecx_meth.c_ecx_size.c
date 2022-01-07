
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int KEYLEN (int const*) ;

__attribute__((used)) static int ecx_size(const EVP_PKEY *pkey)
{
    return KEYLEN(pkey);
}
