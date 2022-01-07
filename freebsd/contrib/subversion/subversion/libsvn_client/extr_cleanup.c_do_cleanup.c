
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int wc_ctx; int cancel_baton; int cancel_func; int config; int notify_baton2; int notify_func2; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef void* svn_boolean_t ;
struct cleanup_status_walk_baton {TYPE_1__* ctx; void* include_externals; void* remove_ignored_items; void* remove_unversioned_items; void* vacuum_pristines; void* clear_dav_cache; void* fix_timestamps; void* break_locks; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CALL_WITH_WRITE_LOCK (int ,int ,char const*,int ,int *) ;
 int TRUE ;
 int cleanup_status_walk ;
 int svn_depth_infinity ;
 int svn_io_sleep_for_timestamps (char const*,int *) ;
 int svn_wc_cleanup4 (int ,char const*,void*,void*,void*,void*,int ,int ,int ,int ,int *) ;
 int svn_wc_get_default_ignores (int **,int ,int *) ;
 int svn_wc_walk_status (int ,char const*,int ,int ,void*,int ,int *,int ,struct cleanup_status_walk_baton*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
do_cleanup(const char *local_abspath,
           svn_boolean_t break_locks,
           svn_boolean_t fix_timestamps,
           svn_boolean_t clear_dav_cache,
           svn_boolean_t vacuum_pristines,
           svn_boolean_t remove_unversioned_items,
           svn_boolean_t remove_ignored_items,
           svn_boolean_t include_externals,
           svn_client_ctx_t *ctx,
           apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_wc_cleanup4(ctx->wc_ctx,
                          local_abspath,
                          break_locks,
                          fix_timestamps,
                          clear_dav_cache,
                          vacuum_pristines,
                          ctx->cancel_func, ctx->cancel_baton,
                          ctx->notify_func2, ctx->notify_baton2,
                          scratch_pool));

  if (fix_timestamps)
    svn_io_sleep_for_timestamps(local_abspath, scratch_pool);

  if (remove_unversioned_items || remove_ignored_items || include_externals)
    {
      struct cleanup_status_walk_baton b;
      apr_array_header_t *ignores;

      b.break_locks = break_locks;
      b.fix_timestamps = fix_timestamps;
      b.clear_dav_cache = clear_dav_cache;
      b.vacuum_pristines = vacuum_pristines;
      b.remove_unversioned_items = remove_unversioned_items;
      b.remove_ignored_items = remove_ignored_items;
      b.include_externals = include_externals;
      b.ctx = ctx;

      SVN_ERR(svn_wc_get_default_ignores(&ignores, ctx->config, scratch_pool));

      SVN_WC__CALL_WITH_WRITE_LOCK(
              svn_wc_walk_status(ctx->wc_ctx, local_abspath,
                                 svn_depth_infinity,
                                 TRUE,
                                 remove_ignored_items,
                                 TRUE,
                                 ignores,
                                 cleanup_status_walk, &b,
                                 ctx->cancel_func,
                                 ctx->cancel_baton,
                                 scratch_pool),
              ctx->wc_ctx,
              local_abspath,
              FALSE ,
              scratch_pool);
    }

  return SVN_NO_ERROR;
}
