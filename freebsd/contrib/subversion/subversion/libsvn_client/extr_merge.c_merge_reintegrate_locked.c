
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client__pathrev_t ;
typedef int svn_client__conflict_report_t ;
typedef void* svn_boolean_t ;
typedef int merge_target_t ;
struct TYPE_4__ {void* ancestral; } ;
typedef TYPE_1__ merge_source_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 void* FALSE ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * find_reintegrate_merge (TYPE_1__**,int **,int *,int *,int *,int *,int *,int *,int *) ;
 int * merge_cousins_and_supplement_mergeinfo (int **,void**,int *,int *,int *,TYPE_1__*,int *,int ,int ,void*,void*,void*,void*,int const*,int *,int *,int *) ;
 int * open_reintegrate_source_and_target (int **,int **,int **,int **,char const*,int const*,char const*,int *,int *,int *) ;
 int svn_depth_infinity ;
 int svn_io_sleep_for_timestamps (char const*,int *) ;

__attribute__((used)) static svn_error_t *
merge_reintegrate_locked(svn_client__conflict_report_t **conflict_report,
                         const char *source_path_or_url,
                         const svn_opt_revision_t *source_peg_revision,
                         const char *target_abspath,
                         svn_boolean_t diff_ignore_ancestry,
                         svn_boolean_t dry_run,
                         const apr_array_header_t *merge_options,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_ra_session_t *target_ra_session, *source_ra_session;
  merge_target_t *target;
  svn_client__pathrev_t *source_loc;
  merge_source_t *source;
  svn_client__pathrev_t *yc_ancestor;
  svn_boolean_t use_sleep = FALSE;
  svn_error_t *err;

  SVN_ERR(open_reintegrate_source_and_target(
            &source_ra_session, &source_loc, &target_ra_session, &target,
            source_path_or_url, source_peg_revision, target_abspath,
            ctx, scratch_pool, scratch_pool));

  SVN_ERR(find_reintegrate_merge(&source, &yc_ancestor,
                                 source_ra_session, source_loc,
                                 target_ra_session, target,
                                 ctx, scratch_pool, scratch_pool));

  if (! source)
    {
      *conflict_report = ((void*)0);
      return SVN_NO_ERROR;
    }







  source->ancestral = FALSE;
  err = merge_cousins_and_supplement_mergeinfo(conflict_report,
                                               &use_sleep,
                                               target,
                                               target_ra_session,
                                               source_ra_session,
                                               source, yc_ancestor,
                                               TRUE ,
                                               svn_depth_infinity,
                                               diff_ignore_ancestry,
                                               FALSE ,
                                               FALSE ,
                                               dry_run,
                                               merge_options,
                                               ctx,
                                               result_pool, scratch_pool);

  if (use_sleep)
    svn_io_sleep_for_timestamps(target_abspath, scratch_pool);

  SVN_ERR(err);
  return SVN_NO_ERROR;
}
