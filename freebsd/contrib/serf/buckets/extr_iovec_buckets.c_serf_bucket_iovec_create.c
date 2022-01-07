
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iovec {int iov_len; int iov_base; } ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
struct TYPE_5__ {int vecs_len; TYPE_1__* vecs; scalar_t__ offset; scalar_t__ current_vec; } ;
typedef TYPE_2__ iovec_context_t ;
struct TYPE_4__ {int iov_len; int iov_base; } ;


 int * serf_bucket_create (int *,int *,TYPE_2__*) ;
 void* serf_bucket_mem_alloc (int *,int) ;
 int serf_bucket_type_iovec ;

serf_bucket_t *serf_bucket_iovec_create(
    struct iovec vecs[],
    int len,
    serf_bucket_alloc_t *allocator)
{
    iovec_context_t *ctx;
    int i;

    ctx = serf_bucket_mem_alloc(allocator, sizeof(*ctx));
    ctx->vecs = serf_bucket_mem_alloc(allocator, len * sizeof(struct iovec));
    ctx->vecs_len = len;
    ctx->current_vec = 0;
    ctx->offset = 0;


    for (i = 0; i < len; i++) {
        ctx->vecs[i].iov_base = vecs[i].iov_base;
        ctx->vecs[i].iov_len = vecs[i].iov_len;
    }

    return serf_bucket_create(&serf_bucket_type_iovec, allocator, ctx);
}
