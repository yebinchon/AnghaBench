
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_5__ {int notify_baton2; int notify_func2; int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_6__ {int src_abspath_or_url; int base_name; } ;
typedef TYPE_2__ svn_client__copy_pair_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_dirent_join (char const*,int ,int *) ;
 int svn_wc__move2 (int ,int ,char const*,int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
do_wc_to_wc_moves_with_locks2(svn_client__copy_pair_t *pair,
                              const char *dst_parent_abspath,
                              svn_boolean_t lock_src,
                              svn_boolean_t lock_dst,
                              svn_boolean_t allow_mixed_revisions,
                              svn_boolean_t metadata_only,
                              svn_client_ctx_t *ctx,
                              apr_pool_t *scratch_pool)
{
  const char *dst_abspath;

  dst_abspath = svn_dirent_join(dst_parent_abspath, pair->base_name,
                                scratch_pool);

  SVN_ERR(svn_wc__move2(ctx->wc_ctx, pair->src_abspath_or_url,
                        dst_abspath, metadata_only,
                        allow_mixed_revisions,
                        ctx->cancel_func, ctx->cancel_baton,
                        ctx->notify_func2, ctx->notify_baton2,
                        scratch_pool));

  return SVN_NO_ERROR;
}
