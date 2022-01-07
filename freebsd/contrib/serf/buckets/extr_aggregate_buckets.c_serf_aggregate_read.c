
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct iovec {char* iov_base; int iov_len; } ;
struct TYPE_4__ {int allocator; int * data; } ;
typedef TYPE_1__ serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;
typedef int aggregate_context_t ;


 int cleanup_aggregate (int *,int ) ;
 int read_aggregate (TYPE_1__*,int ,int,struct iovec*,int*) ;

__attribute__((used)) static apr_status_t serf_aggregate_read(serf_bucket_t *bucket,
                                        apr_size_t requested,
                                        const char **data, apr_size_t *len)
{
    aggregate_context_t *ctx = bucket->data;
    struct iovec vec;
    int vecs_used;
    apr_status_t status;

    cleanup_aggregate(ctx, bucket->allocator);

    status = read_aggregate(bucket, requested, 1, &vec, &vecs_used);

    if (!vecs_used) {
        *len = 0;
    }
    else {
        *data = vec.iov_base;
        *len = vec.iov_len;
    }

    return status;
}
