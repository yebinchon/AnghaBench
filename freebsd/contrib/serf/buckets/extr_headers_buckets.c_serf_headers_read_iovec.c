
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {char* iov_base; scalar_t__ iov_len; } ;
typedef int serf_bucket_t ;
typedef scalar_t__ apr_status_t ;
typedef scalar_t__ apr_size_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ SERF_READ_ALL_AVAIL ;
 scalar_t__ serf_headers_read (int *,scalar_t__,char const**,scalar_t__*) ;

__attribute__((used)) static apr_status_t serf_headers_read_iovec(serf_bucket_t *bucket,
                                            apr_size_t requested,
                                            int vecs_size,
                                            struct iovec *vecs,
                                            int *vecs_used)
{
    apr_size_t avail = requested;
    int i;

    *vecs_used = 0;

    for (i = 0; i < vecs_size; i++) {
        const char *data;
        apr_size_t len;
        apr_status_t status;






        status = serf_headers_read(bucket, avail, &data, &len);

        if (len) {
            vecs[*vecs_used].iov_base = (char*)data;
            vecs[*vecs_used].iov_len = len;

            (*vecs_used)++;

            if (avail != SERF_READ_ALL_AVAIL) {
                avail -= len;


                if (avail == 0) {
                    return status;
                }
            }
        }

        if (status) {
            return status;
        }
    }

    return APR_SUCCESS;
}
