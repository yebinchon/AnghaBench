
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int serf_bucket_read (int *,int ,char const**,int *) ;
 int serialize_data (int *) ;

__attribute__((used)) static apr_status_t serf_bwtp_frame_read(serf_bucket_t *bucket,
                                         apr_size_t requested,
                                         const char **data, apr_size_t *len)
{

    serialize_data(bucket);


    return serf_bucket_read(bucket, requested, data, len);
}
