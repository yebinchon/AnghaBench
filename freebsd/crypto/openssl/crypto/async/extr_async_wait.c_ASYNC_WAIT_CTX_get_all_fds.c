
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fd_lookup_st {struct fd_lookup_st* next; int fd; scalar_t__ del; } ;
struct TYPE_3__ {struct fd_lookup_st* fds; } ;
typedef int OSSL_ASYNC_FD ;
typedef TYPE_1__ ASYNC_WAIT_CTX ;



int ASYNC_WAIT_CTX_get_all_fds(ASYNC_WAIT_CTX *ctx, OSSL_ASYNC_FD *fd,
                               size_t *numfds)
{
    struct fd_lookup_st *curr;

    curr = ctx->fds;
    *numfds = 0;
    while (curr != ((void*)0)) {
        if (curr->del) {

            curr = curr->next;
            continue;
        }
        if (fd != ((void*)0)) {
            *fd = curr->fd;
            fd++;
        }
        (*numfds)++;
        curr = curr->next;
    }
    return 1;
}
