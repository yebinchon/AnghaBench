
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_client__conflict_report_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CALL_WITH_WRITE_LOCK (int ,int ,char const*,int ,int *) ;
 int get_target_and_lock_abspath (char const**,char const**,char const*,TYPE_1__*,int *) ;
 int merge_reintegrate_locked (int **,char const*,int const*,char const*,int ,int ,int const*,TYPE_1__*,int *,int *) ;
 int svn_client__make_merge_conflict_error (int *,int *) ;

svn_error_t *
svn_client_merge_reintegrate(const char *source_path_or_url,
                             const svn_opt_revision_t *source_peg_revision,
                             const char *target_wcpath,
                             svn_boolean_t dry_run,
                             const apr_array_header_t *merge_options,
                             svn_client_ctx_t *ctx,
                             apr_pool_t *pool)
{
  const char *target_abspath, *lock_abspath;
  svn_client__conflict_report_t *conflict_report;

  SVN_ERR(get_target_and_lock_abspath(&target_abspath, &lock_abspath,
                                      target_wcpath, ctx, pool));

  if (!dry_run)
    SVN_WC__CALL_WITH_WRITE_LOCK(
      merge_reintegrate_locked(&conflict_report,
                               source_path_or_url, source_peg_revision,
                               target_abspath,
                               FALSE ,
                               dry_run, merge_options, ctx, pool, pool),
      ctx->wc_ctx, lock_abspath, FALSE , pool);
  else
    SVN_ERR(merge_reintegrate_locked(&conflict_report,
                                     source_path_or_url, source_peg_revision,
                                     target_abspath,
                                     FALSE ,
                                     dry_run, merge_options, ctx, pool, pool));

  SVN_ERR(svn_client__make_merge_conflict_error(conflict_report, pool));
  return SVN_NO_ERROR;
}
