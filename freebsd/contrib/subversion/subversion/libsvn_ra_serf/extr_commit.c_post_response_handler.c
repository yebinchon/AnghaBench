
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
struct TYPE_3__ {int handler; } ;
typedef TYPE_1__ post_response_ctx_t ;
typedef int apr_pool_t ;


 int post_headers_iterator_callback ;
 int serf_bucket_headers_do (int *,int ,TYPE_1__*) ;
 int * serf_bucket_response_get_headers (int *) ;
 int * svn_ra_serf__expect_empty_body (int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
post_response_handler(serf_request_t *request,
                      serf_bucket_t *response,
                      void *baton,
                      apr_pool_t *scratch_pool)
{
  post_response_ctx_t *prc = baton;
  serf_bucket_t *hdrs = serf_bucket_response_get_headers(response);


  serf_bucket_headers_do(hdrs, post_headers_iterator_callback, prc);


  return svn_ra_serf__expect_empty_body(request, response,
                                        prc->handler, scratch_pool);
}
