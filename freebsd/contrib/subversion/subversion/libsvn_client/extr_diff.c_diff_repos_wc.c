
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_9__ {int (* finish_report ) (void*,int *) ;int (* link_path ) (void*,char const*,char const*,int ,scalar_t__,int ,int *,int *) ;int (* set_path ) (void*,char*,int ,scalar_t__,int ,int *,int *) ;} ;
typedef TYPE_1__ svn_ra_reporter3_t ;
typedef int svn_opt_revision_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_diff_tree_processor_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_delta_editor_t ;
struct TYPE_10__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
struct TYPE_11__ {char const* url; int rev; } ;
typedef TYPE_3__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
struct diff_driver_info_t {char const* anchor; int session_relpath; void* orig_path_2; void* orig_path_1; } ;
typedef enum svn_opt_revision_kind { ____Placeholder_svn_opt_revision_kind } svn_opt_revision_kind ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int SVN_RA_CAPABILITY_DEPTH ;
 int TRUE ;
 void* apr_pstrdup (int *,char const*) ;
 int stub1 (void*,char*,int ,scalar_t__,int ,int *,int *) ;
 int stub2 (void*,char const*,char const*,int ,scalar_t__,int ,int *,int *) ;
 int stub3 (void*,int *) ;
 int svn_client__ra_session_from_path2 (int **,TYPE_3__**,char const*,char const*,int const*,int const*,TYPE_2__*,int *) ;
 scalar_t__ svn_depth_infinity ;
 scalar_t__ svn_depth_unknown ;
 int * svn_diff__tree_processor_reverse_create (int const*,int *,int *) ;
 char* svn_dirent_basename (char const*,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_opt_revision_base ;
 int svn_path_is_single_path_component (char const*) ;
 int svn_path_is_url (char const*) ;
 void* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_ra_do_diff3 (int *,TYPE_1__ const**,void**,int ,char const*,scalar_t__,int,int ,char const*,int const*,void*,int *) ;
 int svn_ra_get_repos_root2 (int *,char const**,int *) ;
 int svn_ra_has_capability (int *,int*,int ,int *) ;
 int svn_ra_reparent (int *,char const*,int *) ;
 char const* svn_relpath_dirname (char const*,int *) ;
 int svn_uri_skip_ancestor (char const*,char const*,int *) ;
 int svn_wc__get_diff_editor (int const**,void**,int ,char const*,char const*,scalar_t__,int,int,int,int,int const*,int const*,int ,int ,int *,int *) ;
 int svn_wc__node_get_origin (int*,int *,char const**,char const**,int *,scalar_t__*,char const**,int ,char const*,int ,int *,int *) ;
 int svn_wc__node_get_url (char const**,int ,char const*,int *,int *) ;
 int svn_wc_crawl_revisions5 (int ,char const*,TYPE_1__ const*,void*,int ,scalar_t__,int ,int,int ,int ,int ,int *,int *,int *) ;
 int svn_wc_get_actual_target2 (char const**,char const**,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
diff_repos_wc(const char **root_relpath,
              svn_boolean_t *root_is_dir,
              struct diff_driver_info_t *ddi,
              const char *path_or_url1,
              const svn_opt_revision_t *revision1,
              const svn_opt_revision_t *peg_revision1,
              const char *path2,
              enum svn_opt_revision_kind revision2_kind,
              svn_boolean_t reverse,
              svn_depth_t depth,
              svn_boolean_t ignore_ancestry,
              const apr_array_header_t *changelists,
              const svn_diff_tree_processor_t *diff_processor,
              svn_client_ctx_t *ctx,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  const char *anchor, *anchor_url, *target;
  svn_ra_session_t *ra_session;
  svn_depth_t diff_depth;
  const svn_ra_reporter3_t *reporter;
  void *reporter_baton;
  const svn_delta_editor_t *diff_editor;
  void *diff_edit_baton;
  svn_boolean_t rev2_is_base = (revision2_kind == svn_opt_revision_base);
  svn_boolean_t server_supports_depth;
  const char *abspath_or_url1;
  const char *abspath2;
  const char *anchor_abspath;
  svn_boolean_t is_copy;
  svn_revnum_t cf_revision;
  const char *cf_repos_relpath;
  const char *cf_repos_root_url;
  svn_depth_t cf_depth;
  const char *copy_root_abspath;
  const char *target_url;
  svn_client__pathrev_t *loc1;

  SVN_ERR_ASSERT(! svn_path_is_url(path2));

  if (!svn_path_is_url(path_or_url1))
    {
      SVN_ERR(svn_dirent_get_absolute(&abspath_or_url1, path_or_url1,
                                      scratch_pool));
    }
  else
    {
      abspath_or_url1 = path_or_url1;
    }

  SVN_ERR(svn_dirent_get_absolute(&abspath2, path2, scratch_pool));


  SVN_ERR(svn_wc__node_get_origin(&is_copy,
                                  &cf_revision,
                                  &cf_repos_relpath,
                                  &cf_repos_root_url,
                                  ((void*)0), &cf_depth,
                                  &copy_root_abspath,
                                  ctx->wc_ctx, abspath2,
                                  FALSE, scratch_pool, scratch_pool));

  SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &loc1,
                                            path_or_url1, abspath2,
                                            peg_revision1, revision1,
                                            ctx, scratch_pool));

  if (revision2_kind == svn_opt_revision_base || !is_copy)
    {

      SVN_ERR(svn_wc_get_actual_target2(&anchor, &target, ctx->wc_ctx, path2,
                                        scratch_pool, scratch_pool));


      if (*target && !svn_path_is_single_path_component(target))
        {
          anchor = svn_dirent_join(anchor, target, scratch_pool);
          target = "";
        }

      if (root_relpath)
        *root_relpath = apr_pstrdup(result_pool, target);
      if (root_is_dir)
        *root_is_dir = (*target == '\0');


      SVN_ERR(svn_dirent_get_absolute(&anchor_abspath, anchor, scratch_pool));
      SVN_ERR(svn_wc__node_get_url(&anchor_url, ctx->wc_ctx, anchor_abspath,
                                   scratch_pool, scratch_pool));
      SVN_ERR_ASSERT(anchor_url != ((void*)0));

      target_url = ((void*)0);
    }
  else
    {
      target_url = svn_path_url_add_component2(cf_repos_root_url,
                                               cf_repos_relpath,
                                               scratch_pool);
        {





          anchor_abspath = svn_dirent_dirname(abspath2, scratch_pool);
          anchor_url = svn_path_url_add_component2(cf_repos_root_url,
                                                   svn_relpath_dirname(
                                                            cf_repos_relpath,
                                                            scratch_pool),
                                                   scratch_pool);
          target = svn_dirent_basename(abspath2, ((void*)0));
          anchor = svn_dirent_dirname(path2, scratch_pool);
        }
    }

  SVN_ERR(svn_ra_reparent(ra_session, anchor_url, scratch_pool));

  if (ddi)
    {
      const char *repos_root_url;

      ddi->anchor = anchor;

      if (!reverse)
        {
          ddi->orig_path_1 = apr_pstrdup(result_pool, loc1->url);
          ddi->orig_path_2 =
            svn_path_url_add_component2(anchor_url, target, result_pool);
        }
      else
        {
          ddi->orig_path_1 =
            svn_path_url_add_component2(anchor_url, target, result_pool);
          ddi->orig_path_2 = apr_pstrdup(result_pool, loc1->url);
        }

      SVN_ERR(svn_ra_get_repos_root2(ra_session, &repos_root_url,
                                      scratch_pool));

      ddi->session_relpath = svn_uri_skip_ancestor(repos_root_url,
                                                   anchor_url,
                                                   result_pool);
    }

  if (reverse)
    diff_processor = svn_diff__tree_processor_reverse_create(
                              diff_processor, ((void*)0), scratch_pool);


  SVN_ERR(svn_ra_has_capability(ra_session, &server_supports_depth,
                                SVN_RA_CAPABILITY_DEPTH, scratch_pool));
  SVN_ERR(svn_wc__get_diff_editor(&diff_editor, &diff_edit_baton,
                                  ctx->wc_ctx,
                                  anchor_abspath,
                                  target,
                                  depth,
                                  ignore_ancestry,
                                  rev2_is_base,
                                  reverse,
                                  server_supports_depth,
                                  changelists,
                                  diff_processor,
                                  ctx->cancel_func, ctx->cancel_baton,
                                  scratch_pool, scratch_pool));

  if (depth != svn_depth_infinity)
    diff_depth = depth;
  else
    diff_depth = svn_depth_unknown;


  SVN_ERR(svn_ra_do_diff3(ra_session,
                          &reporter, &reporter_baton,
                          loc1->rev,
                          target,
                          diff_depth,
                          ignore_ancestry,
                          TRUE,
                          loc1->url,
                          diff_editor, diff_edit_baton,
                          scratch_pool));

  if (is_copy && revision2_kind != svn_opt_revision_base)
    {

      if (cf_depth == svn_depth_unknown)
        cf_depth = svn_depth_infinity;





      SVN_ERR(reporter->set_path(reporter_baton, "",
                                 ignore_ancestry ? 0 : cf_revision,
                                 cf_depth, FALSE, ((void*)0), scratch_pool));

      if (*target)
        SVN_ERR(reporter->link_path(reporter_baton, target,
                                    target_url,
                                    ignore_ancestry ? 0 : cf_revision,
                                    cf_depth, FALSE, ((void*)0), scratch_pool));


      SVN_ERR(reporter->finish_report(reporter_baton, scratch_pool));
    }
  else
    {


      SVN_ERR(svn_wc_crawl_revisions5(ctx->wc_ctx, abspath2,
                                      reporter, reporter_baton,
                                      FALSE, depth, TRUE,
                                      (! server_supports_depth),
                                      FALSE,
                                      ctx->cancel_func, ctx->cancel_baton,
                                      ((void*)0), ((void*)0),
                                      scratch_pool));
    }

  return SVN_NO_ERROR;
}
