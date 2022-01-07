
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_13__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_client__conflict_report_t ;
typedef int svn_boolean_t ;
typedef int automatic_merge_t ;
typedef int apr_pool_t ;
struct TYPE_14__ {scalar_t__ nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CALL_WITH_WRITE_LOCK (int ,int ,char const*,int ,int *) ;
 int TRUE ;
 int _ (char*) ;
 int client_find_automatic_merge (int **,char const*,int const*,char const*,int ,int ,int ,TYPE_1__*,int *,int *) ;
 int do_automatic_merge_locked (int **,int *,char const*,int ,int ,int ,int ,int ,TYPE_2__ const*,TYPE_1__*,int *,int *) ;
 int get_target_and_lock_abspath (char const**,char const**,char const*,TYPE_1__*,int *) ;
 int merge_peg_locked (int **,char const*,int const*,TYPE_2__ const*,char const*,int ,int ,int ,int ,int ,int ,int ,TYPE_2__ const*,TYPE_1__*,int *,int *) ;
 int svn_client__make_merge_conflict_error (int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;

svn_error_t *
svn_client_merge_peg5(const char *source_path_or_url,
                      const apr_array_header_t *ranges_to_merge,
                      const svn_opt_revision_t *source_peg_revision,
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


  if (ranges_to_merge != ((void*)0) && ranges_to_merge->nelts == 0)
    return SVN_NO_ERROR;

  SVN_ERR(get_target_and_lock_abspath(&target_abspath, &lock_abspath,
                                      target_wcpath, ctx, pool));


  if (ranges_to_merge == ((void*)0))
    {
      automatic_merge_t *merge;

      if (ignore_mergeinfo)
        return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                                _("Cannot merge automatically while "
                                  "ignoring mergeinfo"));


      SVN_ERR(client_find_automatic_merge(
                                    &merge,
                                    source_path_or_url, source_peg_revision,
                                    target_abspath,
                                    allow_mixed_rev,
                                    TRUE ,
                                    TRUE ,
                                    ctx, pool, pool));

      if (!dry_run)
        SVN_WC__CALL_WITH_WRITE_LOCK(
          do_automatic_merge_locked(&conflict_report,
                                    merge,
                                    target_abspath, depth,
                                    diff_ignore_ancestry,
                                    force_delete, record_only, dry_run,
                                    merge_options, ctx, pool, pool),
          ctx->wc_ctx, lock_abspath, FALSE , pool);
      else
        SVN_ERR(do_automatic_merge_locked(&conflict_report,
                                    merge,
                                    target_abspath, depth,
                                    diff_ignore_ancestry,
                                    force_delete, record_only, dry_run,
                                    merge_options, ctx, pool, pool));
    }
  else if (!dry_run)
    SVN_WC__CALL_WITH_WRITE_LOCK(
      merge_peg_locked(&conflict_report,
                       source_path_or_url, source_peg_revision,
                       ranges_to_merge,
                       target_abspath, depth, ignore_mergeinfo,
                       diff_ignore_ancestry,
                       force_delete, record_only, dry_run,
                       allow_mixed_rev, merge_options, ctx, pool, pool),
      ctx->wc_ctx, lock_abspath, FALSE , pool);
  else
    SVN_ERR(merge_peg_locked(&conflict_report,
                       source_path_or_url, source_peg_revision,
                       ranges_to_merge,
                       target_abspath, depth, ignore_mergeinfo,
                       diff_ignore_ancestry,
                       force_delete, record_only, dry_run,
                       allow_mixed_rev, merge_options, ctx, pool, pool));

  SVN_ERR(svn_client__make_merge_conflict_error(conflict_report, pool));
  return SVN_NO_ERROR;
}
