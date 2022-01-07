
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_dirent_split (char const**,char const**,char const*,int *) ;
 int svn_io_file_del_none ;
 int svn_io_open_uniquely_named (int *,char const**,char const*,char const*,char*,int ,int *,int *) ;
 int svn_wc__wq_build_file_copy_translated (int **,int *,char const*,char const*,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
save_merge_result(svn_skel_t **work_item,
                  svn_wc__db_t *db,
                  const char *local_abspath,
                  const char *source_abspath,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  const char *edited_copy_abspath;
  const char *dir_abspath;
  const char *filename;

  svn_dirent_split(&dir_abspath, &filename, local_abspath, scratch_pool);



  SVN_ERR(svn_io_open_uniquely_named(((void*)0),
                                     &edited_copy_abspath,
                                     dir_abspath,
                                     filename,
                                     ".edited",
                                     svn_io_file_del_none,
                                     scratch_pool, scratch_pool));
  SVN_ERR(svn_wc__wq_build_file_copy_translated(work_item,
                                                db, local_abspath,
                                                source_abspath,
                                                edited_copy_abspath,
                                                result_pool, scratch_pool));
  return SVN_NO_ERROR;
}
