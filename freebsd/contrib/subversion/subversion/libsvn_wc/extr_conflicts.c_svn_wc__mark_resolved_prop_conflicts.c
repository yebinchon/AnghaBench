
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int resolve_prop_conflict_on_node (int *,int *,char const*,int *,char*,int ,int *,int *,int *,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__db_read_conflict (int **,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc_conflict_choose_merged ;

svn_error_t *
svn_wc__mark_resolved_prop_conflicts(svn_wc__db_t *db,
                                     const char *local_abspath,
                                     apr_pool_t *scratch_pool)
{
  svn_boolean_t ignored_result;
  svn_skel_t *conflicts;

  SVN_ERR(svn_wc__db_read_conflict(&conflicts, ((void*)0), ((void*)0),
                                   db, local_abspath,
                                   scratch_pool, scratch_pool));

  if (!conflicts)
    return SVN_NO_ERROR;

  return svn_error_trace(resolve_prop_conflict_on_node(
                           &ignored_result,
                           db, local_abspath, conflicts, "",
                           svn_wc_conflict_choose_merged,
                           ((void*)0), ((void*)0),
                           ((void*)0), ((void*)0),
                           scratch_pool));
}
