
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int CMAC_CTX ;


 int CMAC_CTX_free (int *) ;
 int * EVP_PKEY_get0 (int *) ;

__attribute__((used)) static void cmac_key_free(EVP_PKEY *pkey)
{
    CMAC_CTX *cmctx = EVP_PKEY_get0(pkey);
    CMAC_CTX_free(cmctx);
}
