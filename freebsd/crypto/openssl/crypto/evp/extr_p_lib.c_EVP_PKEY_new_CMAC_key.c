
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * ptr; } ;
struct TYPE_8__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EVP_CIPHER ;
typedef int ENGINE ;
typedef int CMAC_CTX ;


 int CMAC_CTX_free (int *) ;
 int * CMAC_CTX_new () ;
 int CMAC_Init (int *,unsigned char const*,size_t,int const*,int *) ;
 int EVP_F_EVP_PKEY_NEW_CMAC_KEY ;
 int EVP_PKEY_CMAC ;
 int EVP_PKEY_free (TYPE_2__*) ;
 TYPE_2__* EVP_PKEY_new () ;
 int EVP_R_KEY_SETUP_FAILED ;
 int EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ;
 int EVPerr (int ,int ) ;
 int pkey_set_type (TYPE_2__*,int *,int ,int *,int) ;

EVP_PKEY *EVP_PKEY_new_CMAC_key(ENGINE *e, const unsigned char *priv,
                                size_t len, const EVP_CIPHER *cipher)
{

    EVP_PKEY *ret = EVP_PKEY_new();
    CMAC_CTX *cmctx = CMAC_CTX_new();

    if (ret == ((void*)0)
            || cmctx == ((void*)0)
            || !pkey_set_type(ret, e, EVP_PKEY_CMAC, ((void*)0), -1)) {

        goto err;
    }

    if (!CMAC_Init(cmctx, priv, len, cipher, e)) {
        EVPerr(EVP_F_EVP_PKEY_NEW_CMAC_KEY, EVP_R_KEY_SETUP_FAILED);
        goto err;
    }

    ret->pkey.ptr = cmctx;
    return ret;

 err:
    EVP_PKEY_free(ret);
    CMAC_CTX_free(cmctx);
    return ((void*)0);





}
