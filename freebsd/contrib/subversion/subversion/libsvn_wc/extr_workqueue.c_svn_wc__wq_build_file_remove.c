
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 char const* OP_FILE_REMOVE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend_str (char const*,int *,int *) ;
 int svn_wc__db_to_relpath (char const**,int *,char const*,char const*,int *,int *) ;

svn_error_t *
svn_wc__wq_build_file_remove(svn_skel_t **work_item,
                             svn_wc__db_t *db,
                             const char *wri_abspath,
                             const char *local_abspath,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  const char *local_relpath;
  *work_item = svn_skel__make_empty_list(result_pool);

  SVN_ERR(svn_wc__db_to_relpath(&local_relpath, db, wri_abspath,
                                local_abspath, result_pool, scratch_pool));

  svn_skel__prepend_str(local_relpath, *work_item, result_pool);
  svn_skel__prepend_str(OP_FILE_REMOVE, *work_item, result_pool);

  return SVN_NO_ERROR;
}
