
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_LEFT_LOCAL_MOD ;
 int * SVN_NO_ERROR ;
 char const* svn_dirent_dirname (char const*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_io_dir_remove_nonrecursive (char const*,int *) ;
 int svn_wc__adm_destroy (int *,char const*,int ,void*,int *) ;
 int svn_wc__db_is_wcroot (scalar_t__*,int *,char const*,int *) ;
 int svn_wc__db_op_remove_node (scalar_t__*,int *,char const*,scalar_t__,scalar_t__,int *,int *,int ,void*,int *) ;
 int svn_wc__wq_run (int *,char const*,int ,void*,int *) ;
 int svn_wc__write_check (int *,char const*,int *) ;

svn_error_t *
svn_wc__internal_remove_from_revision_control(svn_wc__db_t *db,
                                              const char *local_abspath,
                                              svn_boolean_t destroy_wf,
                                              svn_cancel_func_t cancel_func,
                                              void *cancel_baton,
                                              apr_pool_t *scratch_pool)
{
  svn_boolean_t left_something = FALSE;
  svn_boolean_t is_root;
  svn_error_t *err = ((void*)0);

  SVN_ERR(svn_wc__db_is_wcroot(&is_root, db, local_abspath, scratch_pool));

  SVN_ERR(svn_wc__write_check(db, is_root ? local_abspath
                                          : svn_dirent_dirname(local_abspath,
                                                               scratch_pool),
                              scratch_pool));

  SVN_ERR(svn_wc__db_op_remove_node(&left_something,
                                    db, local_abspath,
                                    destroy_wf ,
                                    destroy_wf ,
                                    ((void*)0), ((void*)0),
                                    cancel_func, cancel_baton,
                                    scratch_pool));

  SVN_ERR(svn_wc__wq_run(db, local_abspath,
                         cancel_func, cancel_baton,
                         scratch_pool));

  if (is_root)
    {

      SVN_ERR(svn_wc__adm_destroy(db, local_abspath, cancel_func, cancel_baton,
                                  scratch_pool));


      if (!left_something && destroy_wf)
        err = svn_io_dir_remove_nonrecursive(local_abspath, scratch_pool);
    }

  if (left_something || err)
    return svn_error_create(SVN_ERR_WC_LEFT_LOCAL_MOD, err, ((void*)0));

  return SVN_NO_ERROR;
}
