
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ blocked; int * currjob; int dispatcher; } ;
typedef TYPE_1__ async_ctx ;


 int ASYNC_F_ASYNC_CTX_NEW ;
 int ASYNCerr (int ,int ) ;
 int CRYPTO_THREAD_set_local (int *,TYPE_1__*) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_INIT_THREAD_ASYNC ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int async_fibre_init_dispatcher (int *) ;
 int ctxkey ;
 int ossl_init_thread_start (int ) ;

__attribute__((used)) static async_ctx *async_ctx_new(void)
{
    async_ctx *nctx;

    if (!ossl_init_thread_start(OPENSSL_INIT_THREAD_ASYNC))
        return ((void*)0);

    nctx = OPENSSL_malloc(sizeof(*nctx));
    if (nctx == ((void*)0)) {
        ASYNCerr(ASYNC_F_ASYNC_CTX_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    async_fibre_init_dispatcher(&nctx->dispatcher);
    nctx->currjob = ((void*)0);
    nctx->blocked = 0;
    if (!CRYPTO_THREAD_set_local(&ctxkey, nctx))
        goto err;

    return nctx;
err:
    OPENSSL_free(nctx);

    return ((void*)0);
}
