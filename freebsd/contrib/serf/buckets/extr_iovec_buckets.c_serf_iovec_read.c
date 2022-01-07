
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {char* iov_base; int iov_len; } ;
typedef int serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int serf_iovec_read_iovec (int *,int ,int,struct iovec*,int*) ;

__attribute__((used)) static apr_status_t serf_iovec_read(serf_bucket_t *bucket,
                                    apr_size_t requested,
                                    const char **data, apr_size_t *len)
{
    struct iovec vec[1];
    apr_status_t status;
    int vecs_used;

    status = serf_iovec_read_iovec(bucket, requested, 1, vec, &vecs_used);

    if (vecs_used) {
        *data = vec[0].iov_base;
        *len = vec[0].iov_len;
    } else {
        *len = 0;
    }

    return status;
}
