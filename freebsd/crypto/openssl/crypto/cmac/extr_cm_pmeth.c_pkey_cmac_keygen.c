
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int CMAC_CTX ;


 int CMAC_CTX_copy (int *,int *) ;
 int CMAC_CTX_free (int *) ;
 int * CMAC_CTX_new () ;
 int EVP_PKEY_CMAC ;
 int EVP_PKEY_assign (int *,int ,int *) ;

__attribute__((used)) static int pkey_cmac_keygen(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    CMAC_CTX *cmkey = CMAC_CTX_new();
    CMAC_CTX *cmctx = ctx->data;
    if (cmkey == ((void*)0))
        return 0;
    if (!CMAC_CTX_copy(cmkey, cmctx)) {
        CMAC_CTX_free(cmkey);
        return 0;
    }
    EVP_PKEY_assign(pkey, EVP_PKEY_CMAC, cmkey);

    return 1;
}
