
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__HAS_WORK_QUEUE ;
 int can_be_cleaned (int*,int *,char const*,int *) ;
 int status_dummy_callback ;
 int svn_depth_infinity ;
 int svn_wc__adm_cleanup_tmp_area (int *,char const*,int *) ;
 int svn_wc__db_is_wcroot (scalar_t__*,int *,char const*,int *) ;
 int svn_wc__db_pristine_cleanup (int *,char const*,int *) ;
 int svn_wc__db_verify (int *,char const*,int *) ;
 int svn_wc__db_wclock_find_root (char const**,int *,char const*,int *,int *) ;
 int svn_wc__db_wclock_obtain (int *,char const*,int,scalar_t__,int *) ;
 int svn_wc__db_wclock_release (int *,char const*,int *) ;
 int svn_wc__internal_walk_status (int *,char const*,int ,int ,int ,int ,int *,int ,int *,int ,void*,int *) ;
 int svn_wc__wq_run (int *,char const*,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
cleanup_internal(svn_wc__db_t *db,
                 const char *dir_abspath,
                 svn_boolean_t break_locks,
                 svn_boolean_t fix_recorded_timestamps,
                 svn_boolean_t vacuum_pristines,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *scratch_pool)
{
  int wc_format;
  svn_boolean_t is_wcroot;
  const char *lock_abspath;


  SVN_ERR(can_be_cleaned(&wc_format, db, dir_abspath, scratch_pool));



  SVN_ERR(svn_wc__db_wclock_find_root(&lock_abspath, db, dir_abspath,
                                      scratch_pool, scratch_pool));
  if (lock_abspath)
    dir_abspath = lock_abspath;
  SVN_ERR(svn_wc__db_wclock_obtain(db, dir_abspath, -1, break_locks, scratch_pool));



  if (wc_format >= SVN_WC__HAS_WORK_QUEUE)
    SVN_ERR(svn_wc__wq_run(db, dir_abspath, cancel_func, cancel_baton,
                           scratch_pool));

  SVN_ERR(svn_wc__db_is_wcroot(&is_wcroot, db, dir_abspath, scratch_pool));
  if (is_wcroot && vacuum_pristines)
    {



      SVN_ERR(svn_wc__adm_cleanup_tmp_area(db, dir_abspath, scratch_pool));


      SVN_ERR(svn_wc__db_pristine_cleanup(db, dir_abspath, scratch_pool));
    }

  if (fix_recorded_timestamps)
    {



      SVN_ERR(svn_wc__internal_walk_status(db, dir_abspath, svn_depth_infinity,
                                           FALSE ,
                                           FALSE ,
                                           FALSE ,
                                           ((void*)0) ,
                                           status_dummy_callback, ((void*)0),
                                           cancel_func, cancel_baton,
                                           scratch_pool));
    }


  SVN_ERR(svn_wc__db_wclock_release(db, dir_abspath, scratch_pool));

  return SVN_NO_ERROR;
}
