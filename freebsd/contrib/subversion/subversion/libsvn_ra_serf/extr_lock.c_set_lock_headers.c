
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
struct TYPE_2__ {int revision; scalar_t__ force; } ;
typedef TYPE_1__ lock_ctx_t ;
typedef int apr_pool_t ;


 int * APR_SUCCESS ;
 int SVN_DAV_OPTIONS_HEADER ;
 int SVN_DAV_OPTION_LOCK_STEAL ;
 int SVN_DAV_VERSION_NAME_HEADER ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int apr_ltoa (int *,int ) ;
 int serf_bucket_headers_set (int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
set_lock_headers(serf_bucket_t *headers,
                 void *baton,
                 apr_pool_t *pool ,
                 apr_pool_t *scratch_pool)
{
  lock_ctx_t *lock_ctx = baton;

  if (lock_ctx->force)
    {
      serf_bucket_headers_set(headers, SVN_DAV_OPTIONS_HEADER,
                              SVN_DAV_OPTION_LOCK_STEAL);
    }

  if (SVN_IS_VALID_REVNUM(lock_ctx->revision))
    {
      serf_bucket_headers_set(headers, SVN_DAV_VERSION_NAME_HEADER,
                              apr_ltoa(pool, lock_ctx->revision));
    }

  return APR_SUCCESS;
}
