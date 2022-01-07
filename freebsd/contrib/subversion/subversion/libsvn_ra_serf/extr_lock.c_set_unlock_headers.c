
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
struct TYPE_2__ {scalar_t__ force; int token; } ;
typedef TYPE_1__ lock_ctx_t ;
typedef int apr_pool_t ;


 char* SVN_DAV_OPTIONS_HEADER ;
 int SVN_DAV_OPTION_LOCK_BREAK ;
 int * SVN_NO_ERROR ;
 int serf_bucket_headers_set (int *,char*,int ) ;

__attribute__((used)) static svn_error_t *
set_unlock_headers(serf_bucket_t *headers,
                   void *baton,
                   apr_pool_t *pool ,
                   apr_pool_t *scratch_pool)
{
  lock_ctx_t *ctx = baton;

  serf_bucket_headers_set(headers, "Lock-Token", ctx->token);
  if (ctx->force)
    {
      serf_bucket_headers_set(headers, SVN_DAV_OPTIONS_HEADER,
                              SVN_DAV_OPTION_LOCK_BREAK);
    }

  return SVN_NO_ERROR;
}
