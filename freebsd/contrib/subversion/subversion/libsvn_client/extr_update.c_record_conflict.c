
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_conflict_result_t ;
struct TYPE_3__ {int local_abspath; } ;
typedef TYPE_1__ svn_wc_conflict_description2_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * SVN_NO_ERROR ;
 int apr_hash_pool_get (int *) ;
 int apr_pstrdup (int ,int ) ;
 int svn_hash_sets (int *,int ,char*) ;
 int svn_wc_conflict_choose_postpone ;
 int * svn_wc_create_conflict_result (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
record_conflict(svn_wc_conflict_result_t **result,
                const svn_wc_conflict_description2_t *description,
                void *baton,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  apr_hash_t *conflicted_paths = baton;

  svn_hash_sets(conflicted_paths,
                apr_pstrdup(apr_hash_pool_get(conflicted_paths),
                            description->local_abspath), "");
  *result = svn_wc_create_conflict_result(svn_wc_conflict_choose_postpone,
                                          ((void*)0), result_pool);
  return SVN_NO_ERROR;
}
