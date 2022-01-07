
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
struct TYPE_2__ {scalar_t__ label; scalar_t__ depth; } ;
typedef TYPE_1__ propfind_context_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int serf_bucket_headers_setn (int *,char*,scalar_t__) ;

__attribute__((used)) static svn_error_t *
setup_propfind_headers(serf_bucket_t *headers,
                       void *setup_baton,
                       apr_pool_t *pool ,
                       apr_pool_t *scratch_pool)
{
  propfind_context_t *ctx = setup_baton;

  serf_bucket_headers_setn(headers, "Depth", ctx->depth);
  if (ctx->label)
    {
      serf_bucket_headers_setn(headers, "Label", ctx->label);
    }

  return SVN_NO_ERROR;
}
