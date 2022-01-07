
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_history_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_fs_history_prev2 (int **,int *,int ,int *,int *) ;

svn_error_t *
svn_fs_history_prev(svn_fs_history_t **prev_history_p,
                    svn_fs_history_t *history, svn_boolean_t cross_copies,
                    apr_pool_t *pool)
{
  return svn_error_trace(svn_fs_history_prev2(prev_history_p, history,
                                              cross_copies, pool, pool));
}
