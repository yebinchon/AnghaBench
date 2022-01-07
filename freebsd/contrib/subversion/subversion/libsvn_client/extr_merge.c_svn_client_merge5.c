
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_12__ {int wc_ctx; } ;
typedef TYPE_2__ svn_client_ctx_t ;
typedef int svn_client__conflict_report_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_BAD_REVISION ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CALL_WITH_WRITE_LOCK (int ,int ,char const*,int ,int *) ;
 int _ (char*) ;
 int ensure_wc_path_has_repo_revision (char const*,TYPE_1__ const*,int *) ;
 int get_target_and_lock_abspath (char const**,char const**,char const*,TYPE_2__*,int *) ;
 int svn_client__make_merge_conflict_error (int *,int *) ;
 int svn_client__merge_locked (int **,char const*,TYPE_1__ const*,char const*,TYPE_1__ const*,char const*,int ,int ,int ,int ,int ,int ,int ,int const*,TYPE_2__*,int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 scalar_t__ svn_opt_revision_unspecified ;
 scalar_t__ svn_path_is_url (char const*) ;

svn_error_t *
svn_client_merge5(const char *source1,
                  const svn_opt_revision_t *revision1,
                  const char *source2,
                  const svn_opt_revision_t *revision2,
                  const char *target_wcpath,
                  svn_depth_t depth,
                  svn_boolean_t ignore_mergeinfo,
                  svn_boolean_t diff_ignore_ancestry,
                  svn_boolean_t force_delete,
                  svn_boolean_t record_only,
                  svn_boolean_t dry_run,
                  svn_boolean_t allow_mixed_rev,
                  const apr_array_header_t *merge_options,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *pool)
{
  const char *target_abspath, *lock_abspath;
  svn_client__conflict_report_t *conflict_report;



  if ((revision1->kind == svn_opt_revision_unspecified)
      || (revision2->kind == svn_opt_revision_unspecified))
    return svn_error_create(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                            _("Not all required revisions are specified"));
  if (svn_path_is_url(source1) != svn_path_is_url(source2))
    return svn_error_create(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                            _("Merge sources must both be "
                              "either paths or URLs"));



  SVN_ERR(ensure_wc_path_has_repo_revision(source1, revision1, pool));
  SVN_ERR(ensure_wc_path_has_repo_revision(source2, revision2, pool));

  SVN_ERR(get_target_and_lock_abspath(&target_abspath, &lock_abspath,
                                      target_wcpath, ctx, pool));

  if (!dry_run)
    SVN_WC__CALL_WITH_WRITE_LOCK(
      svn_client__merge_locked(&conflict_report,
                               source1, revision1, source2, revision2,
                               target_abspath, depth, ignore_mergeinfo,
                               diff_ignore_ancestry,
                               force_delete, record_only, dry_run,
                               allow_mixed_rev, merge_options, ctx, pool, pool),
      ctx->wc_ctx, lock_abspath, FALSE , pool);
  else
    SVN_ERR(svn_client__merge_locked(&conflict_report,
                                     source1, revision1, source2, revision2,
                                     target_abspath, depth, ignore_mergeinfo,
                                     diff_ignore_ancestry,
                                     force_delete, record_only, dry_run,
                                     allow_mixed_rev, merge_options, ctx, pool,
                                     pool));

  SVN_ERR(svn_client__make_merge_conflict_error(conflict_report, pool));
  return SVN_NO_ERROR;
}
