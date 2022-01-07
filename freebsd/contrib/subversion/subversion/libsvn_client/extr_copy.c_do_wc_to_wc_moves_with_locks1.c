
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_client__copy_pair_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CALL_WITH_WRITE_LOCK (int ,int ,char const*,int ,int *) ;
 int do_wc_to_wc_moves_with_locks2 (int *,char const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
do_wc_to_wc_moves_with_locks1(svn_client__copy_pair_t *pair,
                              const char *dst_parent_abspath,
                              svn_boolean_t lock_src,
                              svn_boolean_t lock_dst,
                              svn_boolean_t allow_mixed_revisions,
                              svn_boolean_t metadata_only,
                              svn_client_ctx_t *ctx,
                              apr_pool_t *scratch_pool)
{
  if (lock_dst)
    SVN_WC__CALL_WITH_WRITE_LOCK(
      do_wc_to_wc_moves_with_locks2(pair, dst_parent_abspath, lock_src,
                                    lock_dst, allow_mixed_revisions,
                                    metadata_only,
                                    ctx, scratch_pool),
      ctx->wc_ctx, dst_parent_abspath, FALSE, scratch_pool);
  else
    SVN_ERR(do_wc_to_wc_moves_with_locks2(pair, dst_parent_abspath, lock_src,
                                          lock_dst, allow_mixed_revisions,
                                          metadata_only,
                                          ctx, scratch_pool));

  return SVN_NO_ERROR;
}
