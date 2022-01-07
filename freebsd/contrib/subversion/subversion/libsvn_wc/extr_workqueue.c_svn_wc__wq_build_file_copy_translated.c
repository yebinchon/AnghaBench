
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 char const* OP_FILE_COPY_TRANSLATED ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_none ;
 int * svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend_str (char const*,int *,int *) ;
 int svn_wc__db_to_relpath (char const**,int *,char const*,char const*,int *,int *) ;

svn_error_t *
svn_wc__wq_build_file_copy_translated(svn_skel_t **work_item,
                                      svn_wc__db_t *db,
                                      const char *local_abspath,
                                      const char *src_abspath,
                                      const char *dst_abspath,
                                      apr_pool_t *result_pool,
                                      apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  const char *local_relpath;

  *work_item = svn_skel__make_empty_list(result_pool);

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  SVN_ERR_ASSERT(svn_dirent_is_absolute(src_abspath));
  SVN_ERR_ASSERT(svn_dirent_is_absolute(dst_abspath));


  SVN_ERR(svn_io_check_path(src_abspath, &kind, result_pool));

  if (kind == svn_node_none)
    return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                             _("'%s' not found"),
                             svn_dirent_local_style(src_abspath,
                                                    scratch_pool));

  SVN_ERR(svn_wc__db_to_relpath(&local_relpath, db, local_abspath, dst_abspath,
                                result_pool, scratch_pool));
  svn_skel__prepend_str(local_relpath, *work_item, result_pool);

  SVN_ERR(svn_wc__db_to_relpath(&local_relpath, db, local_abspath, src_abspath,
                                result_pool, scratch_pool));
  svn_skel__prepend_str(local_relpath, *work_item, result_pool);

  SVN_ERR(svn_wc__db_to_relpath(&local_relpath, db, local_abspath,
                                local_abspath, result_pool, scratch_pool));
  svn_skel__prepend_str(local_relpath, *work_item, result_pool);

  svn_skel__prepend_str(OP_FILE_COPY_TRANSLATED, *work_item, result_pool);

  return SVN_NO_ERROR;
}
