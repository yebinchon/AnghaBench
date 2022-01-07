
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_KEY_up_ref (int *) ;
 int * EVP_PKEY_get0_EC_KEY (int *) ;

EC_KEY *EVP_PKEY_get1_EC_KEY(EVP_PKEY *pkey)
{
    EC_KEY *ret = EVP_PKEY_get0_EC_KEY(pkey);
    if (ret != ((void*)0))
        EC_KEY_up_ref(ret);
    return ret;
}
