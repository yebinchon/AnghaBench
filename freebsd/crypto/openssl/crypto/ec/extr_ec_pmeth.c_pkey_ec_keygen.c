
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * gen_group; } ;
struct TYPE_4__ {int * pkey; TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef TYPE_2__ EC_PKEY_CTX ;
typedef int EC_KEY ;


 int EC_F_PKEY_EC_KEYGEN ;
 int EC_KEY_free (int *) ;
 int EC_KEY_generate_key (int *) ;
 int * EC_KEY_new () ;
 int EC_KEY_set_group (int *,int *) ;
 int EC_R_NO_PARAMETERS_SET ;
 int ECerr (int ,int ) ;
 int EVP_PKEY_assign_EC_KEY (int *,int *) ;
 int EVP_PKEY_copy_parameters (int *,int *) ;
 int ossl_assert (int ) ;

__attribute__((used)) static int pkey_ec_keygen(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    EC_KEY *ec = ((void*)0);
    EC_PKEY_CTX *dctx = ctx->data;
    int ret;

    if (ctx->pkey == ((void*)0) && dctx->gen_group == ((void*)0)) {
        ECerr(EC_F_PKEY_EC_KEYGEN, EC_R_NO_PARAMETERS_SET);
        return 0;
    }
    ec = EC_KEY_new();
    if (ec == ((void*)0))
        return 0;
    if (!ossl_assert(EVP_PKEY_assign_EC_KEY(pkey, ec))) {
        EC_KEY_free(ec);
        return 0;
    }

    if (ctx->pkey != ((void*)0))
        ret = EVP_PKEY_copy_parameters(pkey, ctx->pkey);
    else
        ret = EC_KEY_set_group(ec, dctx->gen_group);

    return ret ? EC_KEY_generate_key(ec) : 0;
}
