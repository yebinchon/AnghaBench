
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int apr_pool_t ;


 int APR_OS_DEFAULT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * SVN_WC__ADM_ENTRIES ;
 int * SVN_WC__ADM_FORMAT ;
 int SVN_WC__ADM_PRISTINE ;
 int SVN_WC__NON_ENTRIES_STRING ;
 int init_adm_tmp_area (char const*,int *) ;
 int make_adm_subdir (char const*,int ,int *) ;
 int svn_io_dir_make_hidden (int ,int ,int *) ;
 int svn_io_file_create (int ,int ,int *) ;
 int svn_wc__adm_child (char const*,int *,int *) ;
 int svn_wc__db_init (int *,char const*,char const*,char const*,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
init_adm(svn_wc__db_t *db,
         const char *local_abspath,
         const char *repos_relpath,
         const char *repos_root_url,
         const char *repos_uuid,
         svn_revnum_t initial_rev,
         svn_depth_t depth,
         apr_pool_t *pool)
{

  SVN_ERR(svn_io_dir_make_hidden(svn_wc__adm_child(local_abspath, ((void*)0), pool),
                                 APR_OS_DEFAULT, pool));




  SVN_ERR(make_adm_subdir(local_abspath, SVN_WC__ADM_PRISTINE, pool));






  SVN_ERR(init_adm_tmp_area(local_abspath, pool));


  SVN_ERR(svn_wc__db_init(db, local_abspath,
                          repos_relpath, repos_root_url, repos_uuid,
                          initial_rev, depth,
                          pool));


  SVN_ERR(svn_io_file_create(svn_wc__adm_child(local_abspath,
                                               SVN_WC__ADM_ENTRIES,
                                               pool),
                             SVN_WC__NON_ENTRIES_STRING,
                             pool));
  SVN_ERR(svn_io_file_create(svn_wc__adm_child(local_abspath,
                                               SVN_WC__ADM_FORMAT,
                                               pool),
                             SVN_WC__NON_ENTRIES_STRING,
                             pool));

  return SVN_NO_ERROR;
}
