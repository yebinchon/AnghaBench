
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_14__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_15__ {int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 scalar_t__ APR_STATUS_IS_ENOTDIR (int ) ;
 scalar_t__ APR_STATUS_IS_ENOTEMPTY (int ) ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (char const*) ;
 int SVN_ERR_WC_CORRUPT ;
 TYPE_1__* SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 char* apr_hash_get (int *,char const*,int ) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_hash_this_key_len (int *) ;
 char* apr_hash_this_val (int *) ;
 int handle_external_item_removal (TYPE_2__*,char const*,char const*,int *) ;
 int handle_externals_change (TYPE_2__*,char const*,int *,char const*,char const*,int *,int ,int ,int *,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_depth_from_word (char const*) ;
 int svn_depth_infinity ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_io_dir_remove_nonrecursive (char const*,int *) ;
 scalar_t__ svn_node_none ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_wc__externals_defined_below (int **,int ,char const*,int *,int *) ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,int ,int ,int *) ;
 int wrap_external_error (TYPE_2__*,char const*,int ,int *) ;

svn_error_t *
svn_client__handle_externals(apr_hash_t *externals_new,
                             apr_hash_t *ambient_depths,
                             const char *repos_root_url,
                             const char *target_abspath,
                             svn_depth_t requested_depth,
                             svn_boolean_t *timestamp_sleep,
                             svn_ra_session_t *ra_session,
                             svn_client_ctx_t *ctx,
                             apr_pool_t *scratch_pool)
{
  apr_hash_t *old_external_defs;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;

  SVN_ERR_ASSERT(repos_root_url);

  iterpool = svn_pool_create(scratch_pool);

  SVN_ERR(svn_wc__externals_defined_below(&old_external_defs,
                                          ctx->wc_ctx, target_abspath,
                                          scratch_pool, iterpool));

  for (hi = apr_hash_first(scratch_pool, externals_new);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *local_abspath = apr_hash_this_key(hi);
      const char *desc_text = apr_hash_this_val(hi);
      svn_depth_t ambient_depth = svn_depth_infinity;

      svn_pool_clear(iterpool);

      if (ambient_depths)
        {
          const char *ambient_depth_w;

          ambient_depth_w = apr_hash_get(ambient_depths, local_abspath,
                                         apr_hash_this_key_len(hi));

          if (ambient_depth_w == ((void*)0))
            {
              return svn_error_createf(
                        SVN_ERR_WC_CORRUPT, ((void*)0),
                        _("Traversal of '%s' found no ambient depth"),
                        svn_dirent_local_style(local_abspath, scratch_pool));
            }
          else
            {
              ambient_depth = svn_depth_from_word(ambient_depth_w);
            }
        }

      SVN_ERR(handle_externals_change(ctx, repos_root_url, timestamp_sleep,
                                      local_abspath,
                                      desc_text, old_external_defs,
                                      ambient_depth, requested_depth,
                                      ra_session, iterpool));
    }


  for (hi = apr_hash_first(scratch_pool, old_external_defs);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *item_abspath = apr_hash_this_key(hi);
      const char *defining_abspath = apr_hash_this_val(hi);
      const char *parent_abspath;

      svn_pool_clear(iterpool);

      SVN_ERR(wrap_external_error(
                          ctx, item_abspath,
                          handle_external_item_removal(ctx, defining_abspath,
                                                       item_abspath, iterpool),
                          iterpool));



      parent_abspath = item_abspath;
      do {
        svn_node_kind_t kind;

        parent_abspath = svn_dirent_dirname(parent_abspath, iterpool);
        SVN_ERR(svn_wc_read_kind2(&kind, ctx->wc_ctx, parent_abspath,
                                  FALSE ,
                                  FALSE ,
                                  iterpool));
        if (kind == svn_node_none)
          {
            svn_error_t *err;

            err = svn_io_dir_remove_nonrecursive(parent_abspath, iterpool);
            if (err)
              {
                if (APR_STATUS_IS_ENOTEMPTY(err->apr_err))
                  {
                    svn_error_clear(err);
                    break;
                  }
                else if (APR_STATUS_IS_ENOENT(err->apr_err)
                         || APR_STATUS_IS_ENOTDIR(err->apr_err))
                  {
                    svn_error_clear(err);

                  }
                else
                  return svn_error_trace(err);
              }
          }
      } while (strcmp(parent_abspath, defining_abspath) != 0);
    }


  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
