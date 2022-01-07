
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct iovec {int dummy; } ;
struct TYPE_6__ {int allocator; } ;
typedef TYPE_1__ serf_bucket_t ;


 int serf_bucket_aggregate_append (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* serf_bucket_iovec_create (struct iovec*,int,int ) ;

void serf_bucket_aggregate_append_iovec(
    serf_bucket_t *aggregate_bucket,
    struct iovec *vecs,
    int vecs_count)
{
    serf_bucket_t *new_bucket;

    new_bucket = serf_bucket_iovec_create(vecs, vecs_count,
                                          aggregate_bucket->allocator);

    serf_bucket_aggregate_append(aggregate_bucket, new_bucket);
}
