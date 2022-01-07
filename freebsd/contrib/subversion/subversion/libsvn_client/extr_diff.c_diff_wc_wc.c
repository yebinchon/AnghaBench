
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_diff_tree_processor_t ;
typedef int svn_depth_t ;
struct TYPE_7__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct diff_driver_info_t {char const* anchor; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char const* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_error_create (int ,int *,int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_opt_revision_base ;
 scalar_t__ svn_opt_revision_working ;
 int svn_path_is_url (char const*) ;
 int svn_wc__diff7 (char const**,int *,int ,char const*,int ,int ,int const*,int const*,int ,int ,int *,int *) ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,int ,int ,int *) ;
 int * unsupported_diff_error (int ) ;

__attribute__((used)) static svn_error_t *
diff_wc_wc(const char **root_relpath,
           svn_boolean_t *root_is_dir,
           struct diff_driver_info_t *ddi,
           const char *path1,
           const svn_opt_revision_t *revision1,
           const char *path2,
           const svn_opt_revision_t *revision2,
           svn_depth_t depth,
           svn_boolean_t ignore_ancestry,
           const apr_array_header_t *changelists,
           const svn_diff_tree_processor_t *diff_processor,
           svn_client_ctx_t *ctx,
           apr_pool_t *result_pool,
           apr_pool_t *scratch_pool)
{
  const char *abspath1;

  SVN_ERR_ASSERT(! svn_path_is_url(path1));
  SVN_ERR_ASSERT(! svn_path_is_url(path2));

  SVN_ERR(svn_dirent_get_absolute(&abspath1, path1, scratch_pool));



  if ((strcmp(path1, path2) != 0)
      || (! ((revision1->kind == svn_opt_revision_base)
             && (revision2->kind == svn_opt_revision_working))))
    return unsupported_diff_error(
       svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                        _("Only diffs between a path's text-base "
                          "and its working files are supported at this time"
                          )));

  if (ddi)
    {
      svn_node_kind_t kind;

      SVN_ERR(svn_wc_read_kind2(&kind, ctx->wc_ctx, abspath1,
                              TRUE, FALSE, scratch_pool));

      if (kind != svn_node_dir)
        ddi->anchor = svn_dirent_dirname(path1, scratch_pool);
      else
        ddi->anchor = path1;
    }

  SVN_ERR(svn_wc__diff7(root_relpath, root_is_dir,
                        ctx->wc_ctx, abspath1, depth,
                        ignore_ancestry, changelists,
                        diff_processor,
                        ctx->cancel_func, ctx->cancel_baton,
                        result_pool, scratch_pool));
  return SVN_NO_ERROR;
}
