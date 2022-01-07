
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 char const* OP_FILE_INSTALL ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_dirent_dirname (char const*,int *) ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend_int (int ,int *,int *) ;
 int svn_skel__prepend_str (char const*,int *,int *) ;
 int svn_wc__db_to_relpath (char const**,int *,char const*,char const*,int *,int *) ;

svn_error_t *
svn_wc__wq_build_file_install(svn_skel_t **work_item,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              const char *source_abspath,
                              svn_boolean_t use_commit_times,
                              svn_boolean_t record_fileinfo,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  const char *local_relpath;
  const char *wri_abspath;
  *work_item = svn_skel__make_empty_list(result_pool);



  wri_abspath = svn_dirent_dirname(local_abspath, scratch_pool);



  if (source_abspath != ((void*)0))
    {
      SVN_ERR(svn_wc__db_to_relpath(&local_relpath, db, wri_abspath,
                                    source_abspath,
                                    result_pool, scratch_pool));

      svn_skel__prepend_str(local_relpath, *work_item, result_pool);
    }

  SVN_ERR(svn_wc__db_to_relpath(&local_relpath, db, wri_abspath,
                                local_abspath, result_pool, scratch_pool));

  svn_skel__prepend_int(record_fileinfo, *work_item, result_pool);
  svn_skel__prepend_int(use_commit_times, *work_item, result_pool);
  svn_skel__prepend_str(local_relpath, *work_item, result_pool);
  svn_skel__prepend_str(OP_FILE_INSTALL, *work_item, result_pool);

  return SVN_NO_ERROR;
}
