
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int EVP_PKEY_NONE ;
 int pkey_set_type (int *,int *,int ,char const*,int) ;

int EVP_PKEY_set_type_str(EVP_PKEY *pkey, const char *str, int len)
{
    return pkey_set_type(pkey, ((void*)0), EVP_PKEY_NONE, str, len);
}
