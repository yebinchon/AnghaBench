
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int wc_ctx; int notify_baton2; int notify_func2; int cancel_baton; int cancel_func; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 char* svn_client_conflict_get_local_abspath (int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_wc__acquire_write_lock_for_resolve (char const**,int ,char const*,int *,int *) ;
 int * svn_wc__conflict_tree_update_local_add (int ,char const*,int ,int ,int ,int ,int *) ;
 int svn_wc__release_write_lock (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
resolve_update_incoming_added_dir_merge(svn_client_conflict_option_t *option,
                                       svn_client_conflict_t *conflict,
                                       svn_client_ctx_t *ctx,
                                       apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  const char *lock_abspath;
  svn_error_t *err;

  local_abspath = svn_client_conflict_get_local_abspath(conflict);

  SVN_ERR(svn_wc__acquire_write_lock_for_resolve(
            &lock_abspath, ctx->wc_ctx, local_abspath,
            scratch_pool, scratch_pool));

  err = svn_wc__conflict_tree_update_local_add(ctx->wc_ctx,
                                               local_abspath,
                                               ctx->cancel_func,
                                               ctx->cancel_baton,
                                               ctx->notify_func2,
                                               ctx->notify_baton2,
                                               scratch_pool);

  err = svn_error_compose_create(err, svn_wc__release_write_lock(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  SVN_ERR(err);

  return SVN_NO_ERROR;
}
