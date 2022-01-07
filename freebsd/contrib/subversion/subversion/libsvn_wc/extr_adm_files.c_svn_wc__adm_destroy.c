
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
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_io_remove_dir2 (int ,int ,int ,void*,int *) ;
 int svn_wc__adm_child (char const*,int *,int *) ;
 int svn_wc__db_drop_root (int *,char const*,int *) ;
 int svn_wc__db_is_wcroot (scalar_t__*,int *,char const*,int *) ;
 int svn_wc__write_check (int *,char const*,int *) ;

svn_error_t *
svn_wc__adm_destroy(svn_wc__db_t *db,
                    const char *dir_abspath,
                    svn_cancel_func_t cancel_func,
                    void *cancel_baton,
                    apr_pool_t *scratch_pool)
{
  svn_boolean_t is_wcroot;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(dir_abspath));

  SVN_ERR(svn_wc__write_check(db, dir_abspath, scratch_pool));

  SVN_ERR(svn_wc__db_is_wcroot(&is_wcroot, db, dir_abspath, scratch_pool));





  if (is_wcroot)
    {
      SVN_ERR(svn_wc__db_drop_root(db, dir_abspath, scratch_pool));
      SVN_ERR(svn_io_remove_dir2(svn_wc__adm_child(dir_abspath, ((void*)0),
                                                   scratch_pool),
                                 FALSE,
                                 cancel_func, cancel_baton,
                                 scratch_pool));
    }

  return SVN_NO_ERROR;
}
