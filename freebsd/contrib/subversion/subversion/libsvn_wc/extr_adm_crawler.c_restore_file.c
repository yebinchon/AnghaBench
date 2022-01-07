
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_wc__db_wq_add (int *,int ,int *,int *) ;
 int svn_wc__mark_resolved_text_conflict (int *,char const*,int ,void*,int *) ;
 int svn_wc__wq_build_file_install (int **,int *,char const*,int *,scalar_t__,int ,int *,int *) ;
 int svn_wc__wq_run (int *,char const*,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
restore_file(svn_wc__db_t *db,
             const char *local_abspath,
             svn_boolean_t use_commit_times,
             svn_boolean_t mark_resolved_text_conflict,
             svn_cancel_func_t cancel_func,
             void *cancel_baton,
             apr_pool_t *scratch_pool)
{
  svn_skel_t *work_item;

  SVN_ERR(svn_wc__wq_build_file_install(&work_item,
                                        db, local_abspath,
                                        ((void*)0) ,
                                        use_commit_times,
                                        TRUE ,
                                        scratch_pool, scratch_pool));

  SVN_ERR(svn_wc__db_wq_add(db,
                            svn_dirent_dirname(local_abspath, scratch_pool),
                            work_item, scratch_pool));


  SVN_ERR(svn_wc__wq_run(db, local_abspath,
                         cancel_func, cancel_baton,
                         scratch_pool));


  if (mark_resolved_text_conflict)
    SVN_ERR(svn_wc__mark_resolved_text_conflict(db, local_abspath,
                                                cancel_func, cancel_baton,
                                                scratch_pool));

  return SVN_NO_ERROR;
}
