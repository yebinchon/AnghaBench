
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_conflict_choice_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_3__ {int wc_ctx; int notify_baton2; int notify_func2; int cancel_baton; int cancel_func; int conflict_baton2; int conflict_func2; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int TRUE ;
 int _ (char*) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int *) ;
 int svn_io_sleep_for_timestamps (char const*,int *) ;
 scalar_t__ svn_path_is_url (char const*) ;
 int svn_wc__acquire_write_lock_for_resolve (char const**,int ,char const*,int *,int *) ;
 int svn_wc__release_write_lock (int ,char const*,int *) ;
 int * svn_wc__resolve_conflicts (int ,char const*,int ,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;

svn_error_t *
svn_client_resolve(const char *path,
                   svn_depth_t depth,
                   svn_wc_conflict_choice_t conflict_choice,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  const char *local_abspath;
  svn_error_t *err;
  const char *lock_abspath;

  if (svn_path_is_url(path))
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' is not a local path"), path);

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));




  SVN_ERR(svn_wc__acquire_write_lock_for_resolve(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath, pool, pool));
  err = svn_wc__resolve_conflicts(ctx->wc_ctx, local_abspath,
                                  depth,
                                  TRUE ,
                                  "" ,
                                  TRUE ,
                                  conflict_choice,
                                  ctx->conflict_func2,
                                  ctx->conflict_baton2,
                                  ctx->cancel_func, ctx->cancel_baton,
                                  ctx->notify_func2, ctx->notify_baton2,
                                  pool);

  err = svn_error_compose_create(err, svn_wc__release_write_lock(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 pool));
  svn_io_sleep_for_timestamps(path, pool);

  return svn_error_trace(err);
}
