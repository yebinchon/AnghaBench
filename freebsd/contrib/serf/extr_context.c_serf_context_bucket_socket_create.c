
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_context_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int apr_socket_t ;


 int serf__context_progress_delta ;
 int * serf_bucket_socket_create (int *,int *) ;
 int serf_bucket_socket_set_read_progress_cb (int *,int ,int *) ;

serf_bucket_t *serf_context_bucket_socket_create(
    serf_context_t *ctx,
    apr_socket_t *skt,
    serf_bucket_alloc_t *allocator)
{
    serf_bucket_t *bucket = serf_bucket_socket_create(skt, allocator);


    serf_bucket_socket_set_read_progress_cb(bucket,
                                            serf__context_progress_delta,
                                            ctx);

    return bucket;
}
