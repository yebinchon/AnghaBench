
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct revision_report_t {int session; } ;
typedef int serf_bucket_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_ra_serf__setup_svndiff_accept_encoding (int *,int ) ;

__attribute__((used)) static svn_error_t *
setup_headers(serf_bucket_t *headers,
              void *baton,
              apr_pool_t *request_pool,
              apr_pool_t *scratch_pool)
{
  struct revision_report_t *ctx = baton;

  svn_ra_serf__setup_svndiff_accept_encoding(headers, ctx->session);

  return SVN_NO_ERROR;
}
