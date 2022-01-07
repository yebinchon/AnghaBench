
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_client_patch_func_t ;
struct TYPE_4__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CALL_WITH_WRITE_LOCK (int ,int ,char const*,int ,int *) ;
 int _ (char*) ;
 int apply_patches (char const*,char const*,int ,int,int ,int ,int ,int ,void*,TYPE_1__*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_path_is_url (char const*) ;

svn_error_t *
svn_client_patch(const char *patch_abspath,
                 const char *wc_dir_abspath,
                 svn_boolean_t dry_run,
                 int strip_count,
                 svn_boolean_t reverse,
                 svn_boolean_t ignore_whitespace,
                 svn_boolean_t remove_tempfiles,
                 svn_client_patch_func_t patch_func,
                 void *patch_baton,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;

  if (strip_count < 0)
    return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                            _("strip count must be positive"));

  if (svn_path_is_url(wc_dir_abspath))
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' is not a local path"),
                             svn_dirent_local_style(wc_dir_abspath,
                                                    scratch_pool));

  SVN_ERR(svn_io_check_path(patch_abspath, &kind, scratch_pool));
  if (kind == svn_node_none)
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' does not exist"),
                             svn_dirent_local_style(patch_abspath,
                                                    scratch_pool));
  if (kind != svn_node_file)
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' is not a file"),
                             svn_dirent_local_style(patch_abspath,
                                                    scratch_pool));

  SVN_ERR(svn_io_check_path(wc_dir_abspath, &kind, scratch_pool));
  if (kind == svn_node_none)
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' does not exist"),
                             svn_dirent_local_style(wc_dir_abspath,
                                                    scratch_pool));
  if (kind != svn_node_dir)
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' is not a directory"),
                             svn_dirent_local_style(wc_dir_abspath,
                                                    scratch_pool));

  SVN_WC__CALL_WITH_WRITE_LOCK(
    apply_patches(patch_abspath, wc_dir_abspath, dry_run, strip_count,
                  reverse, ignore_whitespace, remove_tempfiles,
                  patch_func, patch_baton, ctx, scratch_pool),
    ctx->wc_ctx, wc_dir_abspath, FALSE , scratch_pool);
  return SVN_NO_ERROR;
}
