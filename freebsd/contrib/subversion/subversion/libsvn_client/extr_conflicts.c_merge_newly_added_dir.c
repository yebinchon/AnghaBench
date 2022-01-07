
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_13__ {int (* finish_report ) (void*,int *) ;int (* set_path ) (void*,char*,void*,int ,int ,int *,int *) ;} ;
typedef TYPE_1__ svn_ra_reporter3_t ;
typedef int svn_error_t ;
struct TYPE_14__ {int file_added; int dir_added; } ;
typedef TYPE_2__ svn_diff_tree_processor_t ;
typedef int svn_delta_editor_t ;
struct TYPE_15__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_3__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
struct merge_newly_added_dir_baton {char const* target_abspath; char const* added_repos_relpath; void* merge_right_rev; void* merge_left_rev; int repos_uuid; int repos_root_url; TYPE_3__* ctx; int member_0; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int diff_dir_added ;
 int diff_file_added ;
 int stub1 (void*,char*,void*,int ,int ,int *,int *) ;
 int stub2 (void*,int *) ;
 int svn_client__get_diff_editor2 (int const**,void**,int *,int ,void*,int ,TYPE_2__ const*,int ,int ,int *) ;
 int svn_client__open_ra_session_internal (int **,char const**,char const*,int *,int *,int ,int ,TYPE_3__*,int *,int *) ;
 int svn_depth_infinity ;
 TYPE_2__* svn_diff__tree_processor_create (struct merge_newly_added_dir_baton*,int *) ;
 TYPE_2__* svn_diff__tree_processor_filter_create (TYPE_2__ const*,char const*,int *) ;
 TYPE_2__* svn_diff__tree_processor_reverse_create (TYPE_2__ const*,int *,int *) ;
 int svn_ra__dup_session (int **,int *,char const*,int *,int *) ;
 int svn_ra_do_diff3 (int *,TYPE_1__ const**,void**,void*,char const*,int ,int ,int ,char const*,int const*,void*,int *) ;
 int svn_uri_split (char const**,char const**,char const*,int *) ;
 int svn_wc__node_get_repos_info (int *,int *,int *,int *,int ,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
merge_newly_added_dir(const char *added_repos_relpath,
                      const char *source1,
                      svn_revnum_t rev1,
                      const char *source2,
                      svn_revnum_t rev2,
                      const char *target_abspath,
                      svn_boolean_t reverse_merge,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_diff_tree_processor_t *processor;
  struct merge_newly_added_dir_baton baton = { 0 };
  const svn_diff_tree_processor_t *diff_processor;
  svn_ra_session_t *ra_session;
  const char *corrected_url;
  svn_ra_session_t *extra_ra_session;
  const svn_ra_reporter3_t *reporter;
  void *reporter_baton;
  const svn_delta_editor_t *diff_editor;
  void *diff_edit_baton;
  const char *anchor1;
  const char *anchor2;
  const char *target1;
  const char *target2;

  svn_uri_split(&anchor1, &target1, source1, scratch_pool);
  svn_uri_split(&anchor2, &target2, source2, scratch_pool);

  baton.target_abspath = target_abspath;
  baton.ctx = ctx;
  baton.added_repos_relpath = added_repos_relpath;
  SVN_ERR(svn_wc__node_get_repos_info(((void*)0), ((void*)0),
                                      &baton.repos_root_url, &baton.repos_uuid,
                                      ctx->wc_ctx, target_abspath,
                                      scratch_pool, scratch_pool));
  baton.merge_left_rev = rev1;
  baton.merge_right_rev = rev2;

  processor = svn_diff__tree_processor_create(&baton, scratch_pool);
  processor->dir_added = diff_dir_added;
  processor->file_added = diff_file_added;

  diff_processor = processor;
  if (reverse_merge)
    diff_processor = svn_diff__tree_processor_reverse_create(diff_processor,
                                                             ((void*)0),
                                                             scratch_pool);



  diff_processor = svn_diff__tree_processor_filter_create(
                     diff_processor, target1, scratch_pool);

  SVN_ERR(svn_client__open_ra_session_internal(&ra_session, &corrected_url,
                                               anchor2, ((void*)0), ((void*)0), FALSE,
                                               FALSE, ctx,
                                               scratch_pool, scratch_pool));
  if (corrected_url)
    anchor2 = corrected_url;


  SVN_ERR(svn_ra__dup_session(&extra_ra_session, ra_session, anchor2,
                              scratch_pool, scratch_pool));


  SVN_ERR(svn_client__get_diff_editor2(
                &diff_editor, &diff_edit_baton,
                extra_ra_session, svn_depth_infinity, rev1, TRUE,
                diff_processor, ctx->cancel_func, ctx->cancel_baton,
                scratch_pool));


  SVN_ERR(svn_ra_do_diff3(ra_session, &reporter, &reporter_baton,
                          rev2, target1, svn_depth_infinity, TRUE, TRUE,
                          source2, diff_editor, diff_edit_baton, scratch_pool));


  SVN_ERR(reporter->set_path(reporter_baton, "", rev1,
                             svn_depth_infinity,
                             FALSE, ((void*)0),
                             scratch_pool));

  SVN_ERR(reporter->finish_report(reporter_baton, scratch_pool));

  return SVN_NO_ERROR;
}
