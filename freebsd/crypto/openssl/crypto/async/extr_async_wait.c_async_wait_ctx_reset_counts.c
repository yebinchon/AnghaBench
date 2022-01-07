
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fd_lookup_st {struct fd_lookup_st* next; scalar_t__ add; scalar_t__ del; } ;
struct TYPE_3__ {struct fd_lookup_st* fds; scalar_t__ numdel; scalar_t__ numadd; } ;
typedef TYPE_1__ ASYNC_WAIT_CTX ;


 int OPENSSL_free (struct fd_lookup_st*) ;

void async_wait_ctx_reset_counts(ASYNC_WAIT_CTX *ctx)
{
    struct fd_lookup_st *curr, *prev = ((void*)0);

    ctx->numadd = 0;
    ctx->numdel = 0;

    curr = ctx->fds;

    while (curr != ((void*)0)) {
        if (curr->del) {
            if (prev == ((void*)0))
                ctx->fds = curr->next;
            else
                prev->next = curr->next;
            OPENSSL_free(curr);
            if (prev == ((void*)0))
                curr = ctx->fds;
            else
                curr = prev->next;
            continue;
        }
        if (curr->add) {
            curr->add = 0;
        }
        prev = curr;
        curr = curr->next;
    }
}
