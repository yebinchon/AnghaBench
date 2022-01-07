
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int serf_bucket_t ;
struct TYPE_2__ {int relpath; int commit_ctx; scalar_t__ result_checksum; scalar_t__ base_checksum; int base_revision; } ;
typedef TYPE_1__ file_context_t ;
typedef int apr_pool_t ;


 int * APR_SUCCESS ;
 int SVN_DAV_BASE_FULLTEXT_MD5_HEADER ;
 int SVN_DAV_RESULT_FULLTEXT_MD5_HEADER ;
 int SVN_DAV_VERSION_NAME_HEADER ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 scalar_t__ apr_psprintf (int *,char*,int ) ;
 int maybe_set_lock_token_header (int *,int ,int ,int *) ;
 int serf_bucket_headers_set (int *,int ,scalar_t__) ;

__attribute__((used)) static svn_error_t *
setup_put_headers(serf_bucket_t *headers,
                  void *baton,
                  apr_pool_t *pool ,
                  apr_pool_t *scratch_pool)
{
  file_context_t *ctx = baton;

  if (SVN_IS_VALID_REVNUM(ctx->base_revision))
    {
      serf_bucket_headers_set(headers, SVN_DAV_VERSION_NAME_HEADER,
                              apr_psprintf(pool, "%ld", ctx->base_revision));
    }

  if (ctx->base_checksum)
    {
      serf_bucket_headers_set(headers, SVN_DAV_BASE_FULLTEXT_MD5_HEADER,
                              ctx->base_checksum);
    }

  if (ctx->result_checksum)
    {
      serf_bucket_headers_set(headers, SVN_DAV_RESULT_FULLTEXT_MD5_HEADER,
                              ctx->result_checksum);
    }

  SVN_ERR(maybe_set_lock_token_header(headers, ctx->commit_ctx,
                                      ctx->relpath, pool));

  return APR_SUCCESS;
}
