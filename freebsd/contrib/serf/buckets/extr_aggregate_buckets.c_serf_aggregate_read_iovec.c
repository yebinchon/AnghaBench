
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct iovec {int dummy; } ;
struct TYPE_4__ {int allocator; int * data; } ;
typedef TYPE_1__ serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;
typedef int aggregate_context_t ;


 int cleanup_aggregate (int *,int ) ;
 int read_aggregate (TYPE_1__*,int ,int,struct iovec*,int*) ;

__attribute__((used)) static apr_status_t serf_aggregate_read_iovec(serf_bucket_t *bucket,
                                              apr_size_t requested,
                                              int vecs_size,
                                              struct iovec *vecs,
                                              int *vecs_used)
{
    aggregate_context_t *ctx = bucket->data;

    cleanup_aggregate(ctx, bucket->allocator);

    return read_aggregate(bucket, requested, vecs_size, vecs, vecs_used);
}
