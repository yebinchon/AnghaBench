
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {TYPE_1__* session; } ;
typedef TYPE_2__ stream_ctx_t ;
typedef int serf_bucket_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ using_compression; } ;


 int * SVN_NO_ERROR ;
 int serf_bucket_headers_setn (int *,char*,char*) ;
 scalar_t__ svn_tristate_false ;

__attribute__((used)) static svn_error_t *
headers_fetch(serf_bucket_t *headers,
              void *baton,
              apr_pool_t *pool ,
              apr_pool_t *scratch_pool)
{
  stream_ctx_t *fetch_ctx = baton;

  if (fetch_ctx->session->using_compression != svn_tristate_false)
    {
      serf_bucket_headers_setn(headers, "Accept-Encoding", "gzip");
    }

  return SVN_NO_ERROR;
}
