
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef int serf_bucket_alloc_t ;
typedef int req_ctx_t ;
typedef int apr_pool_t ;


 int * serf_bucket_barrier_create (int *,int *) ;
 int * serf_bucket_response_create (int *,int *) ;
 int * serf_request_get_alloc (int *) ;

__attribute__((used)) static serf_bucket_t* accept_response(serf_request_t *request,
                                      serf_bucket_t *stream,
                                      void *acceptor_baton,
                                      apr_pool_t *pool)
{
    serf_bucket_t *c;
    serf_bucket_alloc_t *bkt_alloc;





    bkt_alloc = serf_request_get_alloc(request);


    c = serf_bucket_barrier_create(stream, bkt_alloc);

    return serf_bucket_response_create(c, bkt_alloc);
}
