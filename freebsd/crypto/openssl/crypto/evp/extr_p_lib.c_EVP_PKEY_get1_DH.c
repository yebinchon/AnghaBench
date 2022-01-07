
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int DH ;


 int DH_up_ref (int *) ;
 int * EVP_PKEY_get0_DH (int *) ;

DH *EVP_PKEY_get1_DH(EVP_PKEY *pkey)
{
    DH *ret = EVP_PKEY_get0_DH(pkey);
    if (ret != ((void*)0))
        DH_up_ref(ret);
    return ret;
}
