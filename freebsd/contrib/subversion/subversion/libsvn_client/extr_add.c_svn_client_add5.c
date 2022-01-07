
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_node_kind_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_14__ {int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ENTRY_EXISTS ;
 int SVN_ERR_ILLEGAL_TARGET ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int SVN_WC__CALL_WITH_WRITE_LOCK (int ,int ,char const*,scalar_t__,int *) ;
 int _ (char*) ;
 int add (char const*,int ,scalar_t__,scalar_t__,scalar_t__,char const*,TYPE_2__*,int *) ;
 int find_existing_parent (char const**,TYPE_2__*,char const*,int *,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_createf (int ,int *,int ,char const*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_io_check_special_path (char const*,int *,scalar_t__*,int *) ;
 scalar_t__ svn_path_is_url (char const*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_wc__is_wcroot (scalar_t__*,int ,char const*,int *) ;

svn_error_t *
svn_client_add5(const char *path,
                svn_depth_t depth,
                svn_boolean_t force,
                svn_boolean_t no_ignore,
                svn_boolean_t no_autoprops,
                svn_boolean_t add_parents,
                svn_client_ctx_t *ctx,
                apr_pool_t *scratch_pool)
{
  const char *parent_abspath;
  const char *local_abspath;
  const char *existing_parent_abspath;
  svn_boolean_t is_wc_root;
  svn_error_t *err;

  if (svn_path_is_url(path))
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' is not a local path"), path);

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, scratch_pool));





  err = svn_wc__is_wcroot(&is_wc_root, ctx->wc_ctx, local_abspath,
                          scratch_pool);
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND
          && err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY)
        {
          return svn_error_trace(err);
        }

      svn_error_clear(err);
      err = ((void*)0);
      is_wc_root = FALSE;
    }
  if (is_wc_root)
    {
        {
          if (! force)
            return svn_error_createf(
                                 SVN_ERR_ENTRY_EXISTS, ((void*)0),
                                 _("'%s' is already under version control"),
                                 svn_dirent_local_style(local_abspath,
                                                        scratch_pool));
        }
    }

  if (is_wc_root)
    parent_abspath = local_abspath;
  else
    parent_abspath = svn_dirent_dirname(local_abspath, scratch_pool);

  existing_parent_abspath = ((void*)0);
  if (add_parents && !is_wc_root)
    {
      apr_pool_t *subpool;
      const char *existing_parent_abspath2;

      subpool = svn_pool_create(scratch_pool);
      SVN_ERR(find_existing_parent(&existing_parent_abspath2, ctx,
                                   parent_abspath, scratch_pool, subpool));
      if (strcmp(existing_parent_abspath2, parent_abspath) != 0)
        existing_parent_abspath = existing_parent_abspath2;
      svn_pool_destroy(subpool);
    }

  SVN_WC__CALL_WITH_WRITE_LOCK(
    add(local_abspath, depth, force, no_ignore, no_autoprops,
        existing_parent_abspath, ctx, scratch_pool),
    ctx->wc_ctx, (existing_parent_abspath ? existing_parent_abspath
                                          : parent_abspath),
    FALSE , scratch_pool);
  return SVN_NO_ERROR;
}
