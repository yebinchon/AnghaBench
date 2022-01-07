
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef int apr_pool_t ;


 int * accept_response (int *,int *,void*,int *) ;
 int serf_bucket_response_set_head (int *) ;

__attribute__((used)) static serf_bucket_t *
accept_head(serf_request_t *request,
            serf_bucket_t *stream,
            void *acceptor_baton,
            apr_pool_t *pool)
{

  serf_bucket_t *response;

  response = accept_response(request, stream, acceptor_baton, pool);


  serf_bucket_response_set_head(response);

  return response;
}
