
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int build_text_conflict_resolve_items (int **,int *,int *,char const*,int *,int ,int *,int ,int *,int ,void*,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__db_op_mark_resolved (int *,char const*,int ,int ,int ,int *,int *) ;
 int svn_wc__db_read_conflict (int **,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__wq_run (int *,char const*,int ,void*,int *) ;
 int svn_wc_conflict_choose_merged ;

svn_error_t *
svn_wc__mark_resolved_text_conflict(svn_wc__db_t *db,
                                    const char *local_abspath,
                                    svn_cancel_func_t cancel_func,
                                    void *cancel_baton,
                                    apr_pool_t *scratch_pool)
{
  svn_skel_t *work_items;
  svn_skel_t *conflict;

  SVN_ERR(svn_wc__db_read_conflict(&conflict, ((void*)0), ((void*)0),
                                   db, local_abspath,
                                   scratch_pool, scratch_pool));

  if (!conflict)
    return SVN_NO_ERROR;

  SVN_ERR(build_text_conflict_resolve_items(&work_items, ((void*)0),
                                            db, local_abspath, conflict,
                                            svn_wc_conflict_choose_merged,
                                            ((void*)0), FALSE, ((void*)0),
                                            cancel_func, cancel_baton,
                                            scratch_pool, scratch_pool));

  SVN_ERR(svn_wc__db_op_mark_resolved(db, local_abspath, TRUE, FALSE, FALSE,
                                      work_items, scratch_pool));

  return svn_error_trace(svn_wc__wq_run(db, local_abspath,
                                        cancel_func, cancel_baton,
                                        scratch_pool));
}
