
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mergeinfo_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int apr_hash_make (int *) ;
 int * walk_mergeinfo_hash_for_diff (int ,int ,int ,int *,int ,int *,int *) ;

svn_error_t *
svn_mergeinfo_remove2(svn_mergeinfo_t *mergeinfo,
                      svn_mergeinfo_t eraser,
                      svn_mergeinfo_t whiteboard,
                      svn_boolean_t consider_inheritance,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  *mergeinfo = apr_hash_make(result_pool);
  return walk_mergeinfo_hash_for_diff(whiteboard, eraser, *mergeinfo, ((void*)0),
                                      consider_inheritance, result_pool,
                                      scratch_pool);
}
