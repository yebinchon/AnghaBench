
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_6__ {int (* finish_report ) (void*,int *) ;int (* set_path ) (void*,char*,int ,int ,int ,int *,int *) ;} ;
typedef TYPE_1__ svn_ra_reporter3_t ;
typedef int svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_diff_tree_processor_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
struct TYPE_7__ {int cancel_baton; int cancel_func; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct diff_driver_info_t {char const* orig_path_1; char const* orig_path_2; char const* anchor; int session_relpath; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 char* apr_pstrdup (int *,char const*) ;
 int diff_prepare_repos_repos (char const**,char const**,int *,int *,char const**,char const**,char const**,char const**,scalar_t__*,scalar_t__*,int **,TYPE_2__*,char const*,char const*,int const*,int const*,int const*,int *) ;
 int stub1 (void*,char*,int ,int ,int ,int *,int *) ;
 int stub2 (void*,int *) ;
 int svn_client__get_diff_editor2 (int const**,void**,int *,int ,int ,int ,int const*,int ,int ,int *) ;
 int svn_depth_infinity ;
 int * svn_diff__tree_processor_filter_create (int const*,char const*,int *) ;
 int * svn_diff__tree_processor_reverse_create (int const*,int *,int *) ;
 char const* svn_dirent_dirname (char const*,int *) ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_path_is_url (char const*) ;
 int svn_ra__dup_session (int **,int *,char const*,int *,int *) ;
 int svn_ra_do_diff3 (int *,TYPE_1__ const**,void**,int ,char const*,int ,int ,int ,char const*,int const*,void*,int *) ;
 int svn_ra_get_repos_root2 (int *,char const**,int *) ;
 int svn_ra_get_session_url (int *,char const**,int *) ;
 int svn_uri_skip_ancestor (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
diff_repos_repos(const char **root_relpath,
                 svn_boolean_t *root_is_dir,
                 struct diff_driver_info_t *ddi,
                 const char *path_or_url1,
                 const char *path_or_url2,
                 const svn_opt_revision_t *revision1,
                 const svn_opt_revision_t *revision2,
                 const svn_opt_revision_t *peg_revision,
                 svn_depth_t depth,
                 svn_boolean_t ignore_ancestry,
                 svn_boolean_t text_deltas,
                 const svn_diff_tree_processor_t *diff_processor,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_ra_session_t *extra_ra_session;

  const svn_ra_reporter3_t *reporter;
  void *reporter_baton;

  const svn_delta_editor_t *diff_editor;
  void *diff_edit_baton;

  const char *url1;
  const char *url2;
  svn_revnum_t rev1;
  svn_revnum_t rev2;
  svn_node_kind_t kind1;
  svn_node_kind_t kind2;
  const char *anchor1;
  const char *anchor2;
  const char *target1;
  const char *target2;
  svn_ra_session_t *ra_session;


  SVN_ERR(diff_prepare_repos_repos(&url1, &url2, &rev1, &rev2,
                                   &anchor1, &anchor2, &target1, &target2,
                                   &kind1, &kind2, &ra_session,
                                   ctx, path_or_url1, path_or_url2,
                                   revision1, revision2, peg_revision,
                                   scratch_pool));




  if (ddi)
    {

      ddi->orig_path_1 = url1;
      ddi->orig_path_2 = url2;






      if (!svn_path_is_url(path_or_url2))
        ddi->anchor = path_or_url2;
      else if (!svn_path_is_url(path_or_url1))
        ddi->anchor = path_or_url1;
      else
        ddi->anchor = ((void*)0);

      if (*target1 && ddi->anchor
          && (kind1 != svn_node_dir || kind2 != svn_node_dir))
        ddi->anchor = svn_dirent_dirname(ddi->anchor, result_pool);
    }



  if (kind2 == svn_node_none)
    {
      const char *str_tmp;
      svn_revnum_t rev_tmp;

      str_tmp = url2;
      url2 = url1;
      url1 = str_tmp;

      rev_tmp = rev2;
      rev2 = rev1;
      rev1 = rev_tmp;

      str_tmp = anchor2;
      anchor2 = anchor1;
      anchor1 = str_tmp;

      str_tmp = target2;
      target2 = target1;
      target1 = str_tmp;

      diff_processor = svn_diff__tree_processor_reverse_create(diff_processor,
                                                               ((void*)0),
                                                               scratch_pool);
    }



  if (root_relpath)
    *root_relpath = apr_pstrdup(result_pool, target1);
  else if ((kind1 != svn_node_file && kind2 != svn_node_file)
           && target1[0] != '\0')
    {
      diff_processor = svn_diff__tree_processor_filter_create(
                                        diff_processor, target1, scratch_pool);
    }




  SVN_ERR(svn_ra__dup_session(&extra_ra_session, ra_session, anchor1,
                              scratch_pool, scratch_pool));

  if (ddi)
    {
      const char *repos_root_url;
      const char *session_url;

      SVN_ERR(svn_ra_get_repos_root2(ra_session, &repos_root_url,
                                      scratch_pool));
      SVN_ERR(svn_ra_get_session_url(ra_session, &session_url,
                                      scratch_pool));

      ddi->session_relpath = svn_uri_skip_ancestor(repos_root_url,
                                                    session_url,
                                                    result_pool);
    }

  SVN_ERR(svn_client__get_diff_editor2(
                &diff_editor, &diff_edit_baton,
                extra_ra_session, depth,
                rev1,
                text_deltas,
                diff_processor,
                ctx->cancel_func, ctx->cancel_baton,
                scratch_pool));


  SVN_ERR(svn_ra_do_diff3(ra_session, &reporter, &reporter_baton,
                          rev2, target1,
                          depth, ignore_ancestry, text_deltas,
                          url2, diff_editor, diff_edit_baton, scratch_pool));


  SVN_ERR(reporter->set_path(reporter_baton, "", rev1,
                             svn_depth_infinity,
                             FALSE, ((void*)0),
                             scratch_pool));

  return svn_error_trace(
                  reporter->finish_report(reporter_baton, scratch_pool));
}
