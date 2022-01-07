
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int serf_bucket_t ;
struct TYPE_4__ {TYPE_2__* commit_ctx; int relpath; int non_recursive_if; int revision; } ;
typedef TYPE_1__ delete_context_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {scalar_t__ keep_locks; } ;


 int SVN_DAV_OPTIONS_HEADER ;
 int SVN_DAV_OPTION_KEEP_LOCKS ;
 int SVN_DAV_VERSION_NAME_HEADER ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int apr_ltoa (int *,int ) ;
 int maybe_set_lock_token_header (int *,TYPE_2__*,int ,int *) ;
 int serf_bucket_headers_set (int *,int ,int ) ;
 int serf_bucket_headers_setn (int *,int ,int ) ;
 int setup_if_header_recursive (scalar_t__*,int *,TYPE_2__*,int ,int *) ;

__attribute__((used)) static svn_error_t *
setup_delete_headers(serf_bucket_t *headers,
                     void *baton,
                     apr_pool_t *pool ,
                     apr_pool_t *scratch_pool)
{
  delete_context_t *del = baton;
  svn_boolean_t added;

  serf_bucket_headers_set(headers, SVN_DAV_VERSION_NAME_HEADER,
                          apr_ltoa(pool, del->revision));

  if (! del->non_recursive_if)
    SVN_ERR(setup_if_header_recursive(&added, headers, del->commit_ctx,
                                      del->relpath, pool));
  else
    {
      SVN_ERR(maybe_set_lock_token_header(headers, del->commit_ctx,
                                          del->relpath, pool));
      added = TRUE;
    }

  if (added && del->commit_ctx->keep_locks)
    serf_bucket_headers_setn(headers, SVN_DAV_OPTIONS_HEADER,
                                      SVN_DAV_OPTION_KEEP_LOCKS);

  return SVN_NO_ERROR;
}
