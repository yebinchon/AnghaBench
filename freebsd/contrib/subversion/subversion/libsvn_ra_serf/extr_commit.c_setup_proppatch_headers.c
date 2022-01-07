
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
struct TYPE_2__ {scalar_t__ relpath; scalar_t__ commit_ctx; int base_revision; } ;
typedef TYPE_1__ proppatch_context_t ;
typedef int apr_pool_t ;


 int SVN_DAV_VERSION_NAME_HEADER ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int apr_psprintf (int *,char*,int ) ;
 int maybe_set_lock_token_header (int *,scalar_t__,scalar_t__,int *) ;
 int serf_bucket_headers_set (int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
setup_proppatch_headers(serf_bucket_t *headers,
                        void *baton,
                        apr_pool_t *pool ,
                        apr_pool_t *scratch_pool)
{
  proppatch_context_t *proppatch = baton;

  if (SVN_IS_VALID_REVNUM(proppatch->base_revision))
    {
      serf_bucket_headers_set(headers, SVN_DAV_VERSION_NAME_HEADER,
                              apr_psprintf(pool, "%ld",
                                           proppatch->base_revision));
    }

  if (proppatch->relpath && proppatch->commit_ctx)
    SVN_ERR(maybe_set_lock_token_header(headers, proppatch->commit_ctx,
                                        proppatch->relpath, pool));

  return SVN_NO_ERROR;
}
