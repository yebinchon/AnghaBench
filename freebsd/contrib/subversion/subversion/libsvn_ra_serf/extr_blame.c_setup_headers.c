
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
struct TYPE_2__ {int session; } ;
typedef TYPE_1__ blame_context_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_ra_serf__setup_svndiff_accept_encoding (int *,int ) ;

__attribute__((used)) static svn_error_t *
setup_headers(serf_bucket_t *headers,
              void *baton,
              apr_pool_t *request_pool,
              apr_pool_t *scratch_pool)
{
  blame_context_t *blame_ctx = baton;

  svn_ra_serf__setup_svndiff_accept_encoding(headers, blame_ctx->session);

  return SVN_NO_ERROR;
}
