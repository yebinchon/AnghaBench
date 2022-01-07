
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_session_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_4__ {int rev; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_client__get_history_as_mergeinfo (int *,int *,TYPE_1__ const*,int ,int ,int *,int *,int *) ;
 int svn_mergeinfo_merge2 (int ,int ,int *,int *) ;
 int svn_mergeinfo_remove2 (int *,int ,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
find_unmerged_mergeinfo_subroutine(svn_mergeinfo_t *filtered_mergeinfo_p,
                                   svn_mergeinfo_t target_history_as_mergeinfo,
                                   svn_mergeinfo_t source_mergeinfo,
                                   const svn_client__pathrev_t *source_pathrev,
                                   svn_ra_session_t *source_ra_session,
                                   svn_client_ctx_t *ctx,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  svn_mergeinfo_t source_history_as_mergeinfo;



  SVN_ERR(svn_client__get_history_as_mergeinfo(
            &source_history_as_mergeinfo, ((void*)0) ,
            source_pathrev, source_pathrev->rev, SVN_INVALID_REVNUM,
            source_ra_session, ctx, scratch_pool));
  SVN_ERR(svn_mergeinfo_merge2(source_mergeinfo,
                               source_history_as_mergeinfo,
                               scratch_pool, scratch_pool));






  SVN_ERR(svn_mergeinfo_remove2(filtered_mergeinfo_p,
                                source_mergeinfo,
                                target_history_as_mergeinfo, TRUE,
                                result_pool, scratch_pool));
  return SVN_NO_ERROR;
}
