
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int dummy; } ;
typedef int serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int serf_bucket_read_iovec (int *,int ,int,struct iovec*,int*) ;
 int serialize_data (int *) ;

__attribute__((used)) static apr_status_t serf_request_read_iovec(serf_bucket_t *bucket,
                                            apr_size_t requested,
                                            int vecs_size,
                                            struct iovec *vecs,
                                            int *vecs_used)
{

    serialize_data(bucket);


    return serf_bucket_read_iovec(bucket, requested,
                                  vecs_size, vecs, vecs_used);
}
