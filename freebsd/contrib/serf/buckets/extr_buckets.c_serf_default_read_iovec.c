
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iovec {scalar_t__ iov_len; void* iov_base; } ;
struct TYPE_6__ {TYPE_1__* type; } ;
typedef TYPE_2__ serf_bucket_t ;
typedef int apr_status_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_5__ {int (* read ) (TYPE_2__*,scalar_t__,char const**,scalar_t__*) ;} ;


 int stub1 (TYPE_2__*,scalar_t__,char const**,scalar_t__*) ;

apr_status_t serf_default_read_iovec(
    serf_bucket_t *bucket,
    apr_size_t requested,
    int vecs_size,
    struct iovec *vecs,
    int *vecs_used)
{
    const char *data;
    apr_size_t len;
    apr_status_t status = bucket->type->read(bucket, requested, &data, &len);




    if (len) {
        vecs[0].iov_base = (void *)data;
        vecs[0].iov_len = len;
        *vecs_used = 1;
    }
    else {
        *vecs_used = 0;
    }

    return status;
}
