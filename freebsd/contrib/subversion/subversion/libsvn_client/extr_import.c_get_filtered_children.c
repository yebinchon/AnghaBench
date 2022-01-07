
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock_state; int prop_state; int content_state; int kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_io_dirent2_t ;
typedef int svn_error_t ;
typedef int (* svn_client_import_filter_func_t ) (void*,scalar_t__*,char const*,int const*,int *) ;
struct TYPE_7__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;} ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int apr_array_header_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_hash_this_val (int *) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 scalar_t__ svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;
 int svn_io_get_dirents3 (int **,char const*,int ,int *,int *) ;
 int svn_node_dir ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_wc_create_notify (char*,int ,int *) ;
 scalar_t__ svn_wc_is_adm_dir (char const*,int *) ;
 scalar_t__ svn_wc_match_ignore_list (char const*,int *,int *) ;
 int svn_wc_notify_lock_state_inapplicable ;
 int svn_wc_notify_skip ;
 int svn_wc_notify_state_inapplicable ;

__attribute__((used)) static svn_error_t *
get_filtered_children(apr_hash_t **children,
                      const char *dir_abspath,
                      apr_hash_t *excludes,
                      apr_array_header_t *ignores,
                      apr_array_header_t *global_ignores,
                      svn_client_import_filter_func_t filter_callback,
                      void *filter_baton,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  apr_hash_t *dirents;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  SVN_ERR(svn_io_get_dirents3(&dirents, dir_abspath, TRUE, result_pool,
                              scratch_pool));

  for (hi = apr_hash_first(scratch_pool, dirents); hi; hi = apr_hash_next(hi))
    {
      const char *base_name = apr_hash_this_key(hi);
      const svn_io_dirent2_t *dirent = apr_hash_this_val(hi);
      const char *local_abspath;

      svn_pool_clear(iterpool);

      local_abspath = svn_dirent_join(dir_abspath, base_name, iterpool);

      if (svn_wc_is_adm_dir(base_name, iterpool))
        {






          if (ctx->notify_func2)
            {
              svn_wc_notify_t *notify
                = svn_wc_create_notify(svn_dirent_join(local_abspath, base_name,
                                                       iterpool),
                                       svn_wc_notify_skip, iterpool);
              notify->kind = svn_node_dir;
              notify->content_state = notify->prop_state
                = svn_wc_notify_state_inapplicable;
              notify->lock_state = svn_wc_notify_lock_state_inapplicable;
              ctx->notify_func2(ctx->notify_baton2, notify, iterpool);
            }

          svn_hash_sets(dirents, base_name, ((void*)0));
          continue;
        }

      if (svn_hash_gets(excludes, local_abspath))
        {
          svn_hash_sets(dirents, base_name, ((void*)0));
          continue;
        }

      if (ignores && svn_wc_match_ignore_list(base_name, ignores, iterpool))
        {
          svn_hash_sets(dirents, base_name, ((void*)0));
          continue;
        }

      if (global_ignores &&
          svn_wc_match_ignore_list(base_name, global_ignores, iterpool))
        {
          svn_hash_sets(dirents, base_name, ((void*)0));
          continue;
        }

      if (filter_callback)
        {
          svn_boolean_t filter = FALSE;

          SVN_ERR(filter_callback(filter_baton, &filter, local_abspath,
                                  dirent, iterpool));

          if (filter)
            {
              svn_hash_sets(dirents, base_name, ((void*)0));
              continue;
            }
        }
    }
  svn_pool_destroy(iterpool);

  *children = dirents;
  return SVN_NO_ERROR;
}
