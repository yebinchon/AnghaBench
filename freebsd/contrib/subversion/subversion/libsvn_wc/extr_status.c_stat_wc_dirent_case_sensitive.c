
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_io_dirent2_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int TRUE ;
 int * svn_error_trace (int ) ;
 int svn_io_stat_dirent2 (int const**,char const*,int,int ,int *,int *) ;
 int svn_wc__db_is_wcroot (int *,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
stat_wc_dirent_case_sensitive(const svn_io_dirent2_t **dirent,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  svn_boolean_t is_wcroot;






  SVN_ERR(svn_wc__db_is_wcroot(&is_wcroot, db, local_abspath,
                               scratch_pool));

  return svn_error_trace(
            svn_io_stat_dirent2(dirent, local_abspath,
                                ! is_wcroot ,
                                TRUE ,
                                result_pool, scratch_pool));
}
