#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct fd_lookup_st {void (* cleanup ) (TYPE_1__*,void const*,int /*<<< orphan*/ ,void*) ;int add; struct fd_lookup_st* next; void* custom_data; int /*<<< orphan*/  fd; void const* key; } ;
struct TYPE_5__ {int /*<<< orphan*/  numadd; struct fd_lookup_st* fds; } ;
typedef  int /*<<< orphan*/  OSSL_ASYNC_FD ;
typedef  TYPE_1__ ASYNC_WAIT_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_F_ASYNC_WAIT_CTX_SET_WAIT_FD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 struct fd_lookup_st* FUNC1 (int) ; 

int FUNC2(ASYNC_WAIT_CTX *ctx, const void *key,
                               OSSL_ASYNC_FD fd, void *custom_data,
                               void (*cleanup)(ASYNC_WAIT_CTX *, const void *,
                                               OSSL_ASYNC_FD, void *))
{
    struct fd_lookup_st *fdlookup;

    if ((fdlookup = FUNC1(sizeof(*fdlookup))) == NULL) {
        FUNC0(ASYNC_F_ASYNC_WAIT_CTX_SET_WAIT_FD, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    fdlookup->key = key;
    fdlookup->fd = fd;
    fdlookup->custom_data = custom_data;
    fdlookup->cleanup = cleanup;
    fdlookup->add = 1;
    fdlookup->next = ctx->fds;
    ctx->fds = fdlookup;
    ctx->numadd++;
    return 1;
}