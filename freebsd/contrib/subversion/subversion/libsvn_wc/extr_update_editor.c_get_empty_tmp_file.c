
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_del_none ;
 int svn_io_open_unique_file3 (int *,char const**,char const*,int ,int *,int *) ;
 int svn_wc__db_temp_wcroot_tempdir (char const**,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_empty_tmp_file(const char **tmp_filename,
                   svn_wc__db_t *db,
                   const char *wri_abspath,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  const char *temp_dir_abspath;

  SVN_ERR(svn_wc__db_temp_wcroot_tempdir(&temp_dir_abspath, db, wri_abspath,
                                         scratch_pool, scratch_pool));
  SVN_ERR(svn_io_open_unique_file3(((void*)0), tmp_filename, temp_dir_abspath,
                                   svn_io_file_del_none,
                                   scratch_pool, scratch_pool));

  return SVN_NO_ERROR;
}
