
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_5__ {int stream; } ;
typedef TYPE_2__ barrier_context_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int serf_bucket_read (int ,int ,char const**,int *) ;

__attribute__((used)) static apr_status_t serf_barrier_read(serf_bucket_t *bucket,
                                     apr_size_t requested,
                                     const char **data, apr_size_t *len)
{
    barrier_context_t *ctx = bucket->data;

    return serf_bucket_read(ctx->stream, requested, data, len);
}
