
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int allocator; TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_6__ {int vecs; } ;
typedef TYPE_2__ iovec_context_t ;


 int serf_bucket_mem_free (int ,int ) ;
 int serf_default_destroy_and_data (TYPE_1__*) ;

__attribute__((used)) static void serf_iovec_destroy(serf_bucket_t *bucket)
{
    iovec_context_t *ctx = bucket->data;

    serf_bucket_mem_free(bucket->allocator, ctx->vecs);
    serf_default_destroy_and_data(bucket);
}
