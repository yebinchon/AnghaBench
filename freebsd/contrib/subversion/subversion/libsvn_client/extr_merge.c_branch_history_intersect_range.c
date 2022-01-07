
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int tip; int has_r0_history; int history; } ;
typedef TYPE_1__ branch_history_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_IS_VALID_REVNUM (int) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_hash_make (int *) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int svn_client__pathrev_dup (int ,int *) ;
 int svn_mergeinfo__filter_mergeinfo_by_ranges (int *,int ,int,int,int ,int *,int *) ;
 int svn_mergeinfo_dup (int ,int *) ;

__attribute__((used)) static svn_error_t *
branch_history_intersect_range(branch_history_t **intersection_p,
                               const branch_history_t *branch_history,
                               svn_revnum_t oldest_rev,
                               svn_revnum_t youngest_rev,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  branch_history_t *result = apr_palloc(result_pool, sizeof(*result));

  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(oldest_rev));
  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(youngest_rev));
  SVN_ERR_ASSERT(oldest_rev >= 1);


  SVN_ERR_ASSERT(oldest_rev <= youngest_rev + 1);

  if (oldest_rev <= youngest_rev)
    {
      SVN_ERR(svn_mergeinfo__filter_mergeinfo_by_ranges(
                &result->history, branch_history->history,
                youngest_rev, oldest_rev - 1, TRUE ,
                result_pool, scratch_pool));
      result->history = svn_mergeinfo_dup(result->history, result_pool);
    }
  else
    {
      result->history = apr_hash_make(result_pool);
    }
  result->has_r0_history = FALSE;


  result->tip = svn_client__pathrev_dup(branch_history->tip, result_pool);

  *intersection_p = result;
  return SVN_NO_ERROR;
}
