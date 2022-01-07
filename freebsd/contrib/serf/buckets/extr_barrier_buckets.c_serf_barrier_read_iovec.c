
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iovec {int dummy; } ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_5__ {int stream; } ;
typedef TYPE_2__ barrier_context_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int serf_bucket_read_iovec (int ,int ,int,struct iovec*,int*) ;

__attribute__((used)) static apr_status_t serf_barrier_read_iovec(serf_bucket_t *bucket,
                                            apr_size_t requested,
                                            int vecs_size, struct iovec *vecs,
                                            int *vecs_used)
{
    barrier_context_t *ctx = bucket->data;

    return serf_bucket_read_iovec(ctx->stream, requested, vecs_size, vecs,
                                  vecs_used);
}
