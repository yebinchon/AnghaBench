
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * waitctx; } ;
typedef TYPE_1__ SSL ;
typedef int OSSL_ASYNC_FD ;
typedef int ASYNC_WAIT_CTX ;


 int ASYNC_WAIT_CTX_get_all_fds (int *,int *,size_t*) ;

int SSL_get_all_async_fds(SSL *s, OSSL_ASYNC_FD *fds, size_t *numfds)
{
    ASYNC_WAIT_CTX *ctx = s->waitctx;

    if (ctx == ((void*)0))
        return 0;
    return ASYNC_WAIT_CTX_get_all_fds(ctx, fds, numfds);
}
