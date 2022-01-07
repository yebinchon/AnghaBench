
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
struct TYPE_4__ {int handler; TYPE_1__* file_ctx; } ;
typedef TYPE_2__ put_response_ctx_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int pool; int remote_result_checksum; } ;


 int SVN_DAV_RESULT_FULLTEXT_MD5_HEADER ;
 int SVN_ERR (int ) ;
 char* serf_bucket_headers_get (int *,int ) ;
 int * serf_bucket_response_get_headers (int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_parse_hex (int *,int ,char const*,int ) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__expect_empty_body (int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
put_response_handler(serf_request_t *request,
                     serf_bucket_t *response,
                     void *baton,
                     apr_pool_t *scratch_pool)
{
  put_response_ctx_t *prc = baton;
  serf_bucket_t *hdrs;
  const char *val;

  hdrs = serf_bucket_response_get_headers(response);
  val = serf_bucket_headers_get(hdrs, SVN_DAV_RESULT_FULLTEXT_MD5_HEADER);
  SVN_ERR(svn_checksum_parse_hex(&prc->file_ctx->remote_result_checksum,
                                 svn_checksum_md5, val, prc->file_ctx->pool));

  return svn_error_trace(
           svn_ra_serf__expect_empty_body(request, response,
                                          prc->handler, scratch_pool));
}
