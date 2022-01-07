
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_WC__ADM_TMP ;
 int TRUE ;
 int init_adm_tmp_area (char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_error_trace (int ) ;
 int svn_io_remove_dir2 (char const*,int ,int *,int *,int *) ;
 char* svn_wc__adm_child (char const*,int ,int *) ;
 int svn_wc__write_check (int *,char const*,int *) ;

svn_error_t *
svn_wc__adm_cleanup_tmp_area(svn_wc__db_t *db,
                             const char *adm_abspath,
                             apr_pool_t *scratch_pool)
{
  const char *tmp_path;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(adm_abspath));

  SVN_ERR(svn_wc__write_check(db, adm_abspath, scratch_pool));


  tmp_path = svn_wc__adm_child(adm_abspath, SVN_WC__ADM_TMP, scratch_pool);

  SVN_ERR(svn_io_remove_dir2(tmp_path, TRUE, ((void*)0), ((void*)0), scratch_pool));


  return svn_error_trace(init_adm_tmp_area(adm_abspath, scratch_pool));
}
