
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_18__ {scalar_t__ number; } ;
struct TYPE_20__ {TYPE_1__ value; void* kind; } ;
typedef TYPE_3__ svn_opt_revision_t ;
typedef int * svn_mergeinfo_catalog_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_21__ {scalar_t__ rev; int url; } ;
typedef TYPE_4__ svn_client__pathrev_t ;
struct TYPE_22__ {TYPE_2__* tip; } ;
typedef TYPE_5__ branch_history_t ;
typedef int apr_pool_t ;
struct TYPE_19__ {int url; scalar_t__ rev; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int branch_history_get_endpoints (int *,TYPE_4__**,TYPE_5__*,int *,int *) ;
 int branch_history_intersect_range (TYPE_5__**,TYPE_5__ const*,scalar_t__,scalar_t__,int *,int *) ;
 int operative_rev_receiver ;
 int short_circuit_mergeinfo_log (int **,int ,int ,TYPE_3__*,int ,TYPE_3__*,TYPE_3__*,TYPE_3__*,int ,scalar_t__*,int *,int *,int *,int *) ;
 void* svn_opt_revision_number ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
find_last_merged_location(svn_client__pathrev_t **base_p,
                          svn_client__pathrev_t *yca,
                          const branch_history_t *source_branch,
                          svn_client__pathrev_t *target,
                          svn_client_ctx_t *ctx,
                          svn_ra_session_t *ra_session,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_opt_revision_t source_peg_rev, source_start_rev, source_end_rev,
    target_opt_rev;
  svn_revnum_t youngest_merged_rev = SVN_INVALID_REVNUM;
  svn_mergeinfo_catalog_t target_mergeinfo_cat = ((void*)0);



  apr_pool_t *tmic_pool = svn_pool_create(scratch_pool);

  source_peg_rev.kind = svn_opt_revision_number;
  source_peg_rev.value.number = source_branch->tip->rev;
  source_start_rev.kind = svn_opt_revision_number;
  source_start_rev.value.number = yca->rev;
  source_end_rev.kind = svn_opt_revision_number;
  source_end_rev.value.number = source_branch->tip->rev;
  target_opt_rev.kind = svn_opt_revision_number;
  target_opt_rev.value.number = target->rev;



  SVN_ERR(short_circuit_mergeinfo_log(&target_mergeinfo_cat,
                                      TRUE,
                                      target->url, &target_opt_rev,
                                      source_branch->tip->url,
                                      &source_peg_rev,
                                      &source_end_rev, &source_start_rev,
                                      operative_rev_receiver,
                                      &youngest_merged_rev,
                                      ctx, ra_session,
                                      tmic_pool, tmic_pool));

  if (!SVN_IS_VALID_REVNUM(youngest_merged_rev))
    {


      *base_p = yca;
    }
  else
    {




      branch_history_t *contiguous_source;
      svn_revnum_t base_rev;
      svn_revnum_t oldest_eligible_rev = SVN_INVALID_REVNUM;
      source_end_rev.value.number = youngest_merged_rev;
      SVN_ERR(short_circuit_mergeinfo_log(&target_mergeinfo_cat,
                                          FALSE,
                                          target->url, &target_opt_rev,
                                          source_branch->tip->url,
                                          &source_peg_rev,
                                          &source_start_rev, &source_end_rev,
                                          operative_rev_receiver,
                                          &oldest_eligible_rev,
                                          ctx, ra_session,
                                          tmic_pool, tmic_pool));





      if (SVN_IS_VALID_REVNUM(oldest_eligible_rev))
        base_rev = oldest_eligible_rev - 1;
      else
        base_rev = youngest_merged_rev;




      SVN_ERR(branch_history_intersect_range(&contiguous_source,
                                             source_branch, yca->rev,
                                             base_rev,
                                             scratch_pool, scratch_pool));
      SVN_ERR(branch_history_get_endpoints(((void*)0), base_p, contiguous_source,
                                           result_pool, scratch_pool));
    }

  svn_pool_destroy(tmic_pool);
  return SVN_NO_ERROR;
}
