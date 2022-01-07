
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct iovec {int iov_len; int iov_base; } ;
struct TYPE_6__ {int allocator; } ;
typedef TYPE_1__ serf_bucket_t ;


 int serf_bucket_aggregate_prepend (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* serf_bucket_simple_create (int ,int ,int *,int *,int ) ;

void serf_bucket_aggregate_prepend_iovec(
    serf_bucket_t *aggregate_bucket,
    struct iovec *vecs,
    int vecs_count)
{
    int i;


    for (i = vecs_count - 1; i >= 0; i--) {
        serf_bucket_t *new_bucket;

        new_bucket = serf_bucket_simple_create(vecs[i].iov_base,
                                               vecs[i].iov_len,
                                               ((void*)0), ((void*)0),
                                               aggregate_bucket->allocator);

        serf_bucket_aggregate_prepend(aggregate_bucket, new_bucket);

    }
}
