
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
struct TYPE_4__ {int db; int local_abspath; int wri_abspath; } ;
typedef TYPE_1__ merge_target_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int detranslate_wc_file (char const**,TYPE_1__ const*,int ,int ,int ,void*,int *,int *) ;
 int svn_dirent_is_ancestor (char const*,char const*) ;
 int svn_dirent_split (char const**,char const**,int ,int *) ;
 int svn_io_copy_file (char const*,char const*,int ,int *) ;
 int svn_io_file_del_none ;
 int svn_io_open_unique_file3 (int *,char const**,char const*,int ,int *,int *) ;
 int svn_io_open_uniquely_named (int *,char const**,char const*,char const*,char const*,int ,int *,int *) ;
 int svn_wc__db_get_wcroot (char const**,int ,int ,int *,int *) ;
 int svn_wc__db_temp_wcroot_tempdir (char const**,int ,int ,int *,int *) ;
 int svn_wc__wq_build_file_copy_translated (int **,int ,int ,char const*,char const*,int *,int *) ;
 int svn_wc__wq_build_file_remove (int **,int ,char const*,char const*,int *,int *) ;
 int * svn_wc__wq_merge (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
preserve_pre_merge_files(svn_skel_t **work_items,
                         const char **left_copy,
                         const char **right_copy,
                         const char **target_copy,
                         const merge_target_t *mt,
                         const char *left_abspath,
                         const char *right_abspath,
                         const char *left_label,
                         const char *right_label,
                         const char *target_label,
                         const char *detranslated_target_abspath,
                         svn_cancel_func_t cancel_func,
                         void *cancel_baton,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  const char *tmp_left, *tmp_right, *detranslated_target_copy;
  const char *dir_abspath, *target_name;
  const char *wcroot_abspath, *temp_dir_abspath;
  svn_skel_t *work_item, *last_items = ((void*)0);

  *work_items = ((void*)0);

  svn_dirent_split(&dir_abspath, &target_name, mt->local_abspath,
                   scratch_pool);

  SVN_ERR(svn_wc__db_get_wcroot(&wcroot_abspath, mt->db, mt->wri_abspath,
                                scratch_pool, scratch_pool));
  SVN_ERR(svn_wc__db_temp_wcroot_tempdir(&temp_dir_abspath, mt->db,
                                         mt->wri_abspath,
                                         scratch_pool, scratch_pool));




  SVN_ERR(svn_io_open_uniquely_named(
            ((void*)0), left_copy, dir_abspath, target_name, left_label,
            svn_io_file_del_none, result_pool, scratch_pool));
  SVN_ERR(svn_io_open_uniquely_named(
            ((void*)0), right_copy, dir_abspath, target_name, right_label,
            svn_io_file_del_none, result_pool, scratch_pool));
  SVN_ERR(svn_io_open_uniquely_named(
            ((void*)0), target_copy, dir_abspath, target_name, target_label,
            svn_io_file_del_none, result_pool, scratch_pool));
  if (! svn_dirent_is_ancestor(wcroot_abspath, left_abspath))
    {
      SVN_ERR(svn_io_open_unique_file3(((void*)0), &tmp_left, temp_dir_abspath,
                                       svn_io_file_del_none,
                                       scratch_pool, scratch_pool));
      SVN_ERR(svn_io_copy_file(left_abspath, tmp_left, TRUE, scratch_pool));


      SVN_ERR(svn_wc__wq_build_file_remove(&work_item, mt->db, wcroot_abspath,
                                           tmp_left,
                                           result_pool, scratch_pool));

      last_items = svn_wc__wq_merge(last_items, work_item, result_pool);
    }
  else
    tmp_left = left_abspath;

  if (! svn_dirent_is_ancestor(wcroot_abspath, right_abspath))
    {
      SVN_ERR(svn_io_open_unique_file3(((void*)0), &tmp_right, temp_dir_abspath,
                                       svn_io_file_del_none,
                                       scratch_pool, scratch_pool));
      SVN_ERR(svn_io_copy_file(right_abspath, tmp_right, TRUE, scratch_pool));


      SVN_ERR(svn_wc__wq_build_file_remove(&work_item, mt->db, wcroot_abspath,
                                           tmp_right,
                                           result_pool, scratch_pool));

      last_items = svn_wc__wq_merge(last_items, work_item, result_pool);
    }
  else
    tmp_right = right_abspath;
  SVN_ERR(svn_wc__wq_build_file_copy_translated(&work_item,
                                                mt->db, mt->local_abspath,
                                                tmp_left, *left_copy,
                                                result_pool, scratch_pool));
  *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);

  SVN_ERR(svn_wc__wq_build_file_copy_translated(&work_item,
                                                mt->db, mt->local_abspath,
                                                tmp_right, *right_copy,
                                                result_pool, scratch_pool));
  *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);



  SVN_ERR(detranslate_wc_file(&detranslated_target_copy, mt, TRUE,
                              mt->local_abspath,
                              cancel_func, cancel_baton,
                              scratch_pool, scratch_pool));

  SVN_ERR(svn_wc__wq_build_file_copy_translated(&work_item,
                                                mt->db, mt->local_abspath,
                                                detranslated_target_copy,
                                                *target_copy,
                                                result_pool, scratch_pool));
  *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);


  SVN_ERR(svn_wc__wq_build_file_remove(&work_item, mt->db, wcroot_abspath,
                                       detranslated_target_copy,
                                       result_pool, scratch_pool));
  *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);

  *work_items = svn_wc__wq_merge(*work_items, last_items, result_pool);

  return SVN_NO_ERROR;
}
