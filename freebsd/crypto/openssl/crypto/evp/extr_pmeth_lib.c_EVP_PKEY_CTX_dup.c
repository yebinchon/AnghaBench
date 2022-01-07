
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* pmeth; int operation; int * app_data; int * data; scalar_t__ peerkey; scalar_t__ pkey; scalar_t__ engine; } ;
struct TYPE_9__ {scalar_t__ (* copy ) (TYPE_2__*,TYPE_2__*) ;} ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 int ENGINE_init (scalar_t__) ;
 int ERR_R_ENGINE_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_PKEY_CTX_DUP ;
 int EVP_PKEY_CTX_free (TYPE_2__*) ;
 int EVP_PKEY_up_ref (scalar_t__) ;
 int EVPerr (int ,int ) ;
 TYPE_2__* OPENSSL_malloc (int) ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_2__*) ;

EVP_PKEY_CTX *EVP_PKEY_CTX_dup(EVP_PKEY_CTX *pctx)
{
    EVP_PKEY_CTX *rctx;
    if (!pctx->pmeth || !pctx->pmeth->copy)
        return ((void*)0);


    if (pctx->engine && !ENGINE_init(pctx->engine)) {
        EVPerr(EVP_F_EVP_PKEY_CTX_DUP, ERR_R_ENGINE_LIB);
        return 0;
    }

    rctx = OPENSSL_malloc(sizeof(*rctx));
    if (rctx == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_CTX_DUP, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    rctx->pmeth = pctx->pmeth;

    rctx->engine = pctx->engine;


    if (pctx->pkey)
        EVP_PKEY_up_ref(pctx->pkey);

    rctx->pkey = pctx->pkey;

    if (pctx->peerkey)
        EVP_PKEY_up_ref(pctx->peerkey);

    rctx->peerkey = pctx->peerkey;

    rctx->data = ((void*)0);
    rctx->app_data = ((void*)0);
    rctx->operation = pctx->operation;

    if (pctx->pmeth->copy(rctx, pctx) > 0)
        return rctx;

    rctx->pmeth = ((void*)0);
    EVP_PKEY_CTX_free(rctx);
    return ((void*)0);

}
