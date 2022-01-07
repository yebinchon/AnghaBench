
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * err; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int wc_ctx; int cancel_baton; int cancel_func; } ;
typedef TYPE_2__ svn_client_ctx_t ;
struct repos_info_baton {int * last_uuid; int * last_repos; TYPE_2__* ctx; int * state_pool; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int fetch_repos_info ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_path_is_url (char const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_wc__externals_defined_below (int **,int ,char const*,int *,int *) ;
 int svn_wc__read_external_info (scalar_t__*,int *,int *,int *,int *,int ,char const*,char const*,int ,int *,int *) ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_failed_external ;
 int svn_wc_upgrade (int ,char const*,int ,struct repos_info_baton*,int ,int ,int (*) (int ,TYPE_1__*,int *),int ,int *) ;
 int upgrade_externals_from_properties (TYPE_2__*,char const*,struct repos_info_baton*,int *) ;

svn_error_t *
svn_client_upgrade(const char *path,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *scratch_pool)
{
  const char *local_abspath;
  apr_hash_t *externals;
  struct repos_info_baton info_baton;

  info_baton.state_pool = scratch_pool;
  info_baton.ctx = ctx;
  info_baton.last_repos = ((void*)0);
  info_baton.last_uuid = ((void*)0);

  if (svn_path_is_url(path))
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' is not a local path"), path);

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, scratch_pool));
  SVN_ERR(svn_wc_upgrade(ctx->wc_ctx, local_abspath,
                         fetch_repos_info, &info_baton,
                         ctx->cancel_func, ctx->cancel_baton,
                         ctx->notify_func2, ctx->notify_baton2,
                         scratch_pool));

  SVN_ERR(svn_wc__externals_defined_below(&externals,
                                          ctx->wc_ctx, local_abspath,
                                          scratch_pool, scratch_pool));

  if (apr_hash_count(externals) > 0)
    {
      apr_pool_t *iterpool = svn_pool_create(scratch_pool);
      apr_hash_index_t *hi;






      for (hi = apr_hash_first(scratch_pool, externals);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *ext_abspath;
          svn_node_kind_t kind;

          svn_pool_clear(iterpool);

          ext_abspath = apr_hash_this_key(hi);

          SVN_ERR(svn_wc__read_external_info(&kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                             ctx->wc_ctx, local_abspath,
                                             ext_abspath, FALSE,
                                             iterpool, iterpool));

          if (kind == svn_node_dir)
            {
              svn_error_t *err = svn_client_upgrade(ext_abspath, ctx, iterpool);

              if (err)
                {
                  svn_wc_notify_t *notify =
                            svn_wc_create_notify(ext_abspath,
                                                 svn_wc_notify_failed_external,
                                                 iterpool);
                  notify->err = err;
                  ctx->notify_func2(ctx->notify_baton2,
                                    notify, iterpool);
                  svn_error_clear(err);

                }
            }
        }

      svn_pool_destroy(iterpool);
    }
  else
    {



      SVN_ERR(upgrade_externals_from_properties(ctx, local_abspath,
                                                &info_baton, scratch_pool));
    }
  return SVN_NO_ERROR;
}
