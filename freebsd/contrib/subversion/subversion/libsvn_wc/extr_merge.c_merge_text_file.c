
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_4__ {char const* local_abspath; int db; int old_actual_props; int merge_options; int diff3_cmd; int wri_abspath; } ;
typedef TYPE_1__ merge_target_t ;
typedef enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int do_text_merge (scalar_t__*,int *,int ,char const*,char const*,char const*,char const*,char const*,char const*,int ,void*,int *) ;
 int do_text_merge_external (scalar_t__*,int *,int ,int ,char const*,char const*,char const*,char const*,char const*,char const*,int *) ;
 int preserve_pre_merge_files (int **,char const**,char const**,char const**,TYPE_1__ const*,char const*,char const*,char const*,char const*,char const*,char const*,int ,void*,int *,int *) ;
 char* svn_dirent_basename (char const*,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_del_none ;
 int svn_io_files_contents_same_p (scalar_t__*,char const*,char const*,int *) ;
 int svn_io_open_uniquely_named (int **,char const**,char const*,char const*,char*,int ,int *,int *) ;
 int svn_wc__conflict_skel_add_text_conflict (int *,int ,char const*,char const*,char const*,char const*,int *,int *) ;
 int * svn_wc__conflict_skel_create (int *) ;
 int svn_wc__db_temp_wcroot_tempdir (char const**,int ,int ,int *,int *) ;
 int svn_wc__get_translate_info (int *,int *,int *,scalar_t__*,int ,char const*,int ,int ,int *,int *) ;
 int svn_wc__wq_build_file_install (int **,int ,char const*,char const*,int ,int ,int *,int *) ;
 int svn_wc__wq_build_file_remove (int **,int ,char const*,char const*,int *,int *) ;
 int * svn_wc__wq_merge (int *,int *,int *) ;
 int svn_wc_merge_conflict ;
 int svn_wc_merge_merged ;
 int svn_wc_merge_unchanged ;

__attribute__((used)) static svn_error_t*
merge_text_file(svn_skel_t **work_items,
                svn_skel_t **conflict_skel,
                enum svn_wc_merge_outcome_t *merge_outcome,
                const merge_target_t *mt,
                const char *left_abspath,
                const char *right_abspath,
                const char *left_label,
                const char *right_label,
                const char *target_label,
                svn_boolean_t dry_run,
                const char *detranslated_target_abspath,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  apr_pool_t *pool = scratch_pool;
  svn_boolean_t contains_conflicts;
  apr_file_t *result_f;
  const char *result_target;
  const char *base_name;
  const char *temp_dir;
  svn_skel_t *work_item;

  *work_items = ((void*)0);

  base_name = svn_dirent_basename(mt->local_abspath, scratch_pool);





  SVN_ERR(svn_wc__db_temp_wcroot_tempdir(&temp_dir, mt->db, mt->wri_abspath,
                                         pool, pool));
  SVN_ERR(svn_io_open_uniquely_named(&result_f, &result_target,
                                     temp_dir, base_name, ".tmp",
                                     svn_io_file_del_none, pool, pool));


  if (mt->diff3_cmd)
      SVN_ERR(do_text_merge_external(&contains_conflicts,
                                     result_f,
                                     mt->diff3_cmd,
                                     mt->merge_options,
                                     detranslated_target_abspath,
                                     left_abspath,
                                     right_abspath,
                                     target_label,
                                     left_label,
                                     right_label,
                                     pool));
  else
    SVN_ERR(do_text_merge(&contains_conflicts,
                          result_f,
                          mt->merge_options,
                          detranslated_target_abspath,
                          left_abspath,
                          right_abspath,
                          target_label,
                          left_label,
                          right_label,
                          cancel_func, cancel_baton,
                          pool));

  SVN_ERR(svn_io_file_close(result_f, pool));


  if (contains_conflicts)
    {
      *merge_outcome = svn_wc_merge_conflict;

      if (! dry_run)
        {
          const char *left_copy, *right_copy, *target_copy;


          SVN_ERR(preserve_pre_merge_files(
                    &work_item,
                    &left_copy, &right_copy, &target_copy,
                    mt, left_abspath, right_abspath,
                    left_label, right_label, target_label,
                    detranslated_target_abspath,
                    cancel_func, cancel_baton,
                    result_pool, scratch_pool));
          *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);



          if (!*conflict_skel)
            *conflict_skel = svn_wc__conflict_skel_create(result_pool);

          SVN_ERR(svn_wc__conflict_skel_add_text_conflict(*conflict_skel,
                                                          mt->db, mt->local_abspath,
                                                          target_copy,
                                                          left_copy,
                                                          right_copy,
                                                          result_pool,
                                                          scratch_pool));
        }
    }
  else
    {
      svn_boolean_t same, special;





      SVN_ERR(svn_wc__get_translate_info(((void*)0), ((void*)0), ((void*)0),
                                         &special, mt->db, mt->local_abspath,
                                         mt->old_actual_props, TRUE,
                                         pool, pool));
      SVN_ERR(svn_io_files_contents_same_p(&same, result_target,
                                           (special ?
                                              detranslated_target_abspath :
                                              mt->local_abspath),
                                           pool));

      *merge_outcome = same ? svn_wc_merge_unchanged : svn_wc_merge_merged;
    }

  if (*merge_outcome != svn_wc_merge_unchanged && ! dry_run)
    {

      SVN_ERR(svn_wc__wq_build_file_install(&work_item,
                                            mt->db, mt->local_abspath,
                                            result_target,
                                            FALSE ,
                                            FALSE ,
                                            result_pool, scratch_pool));
      *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);
    }


  SVN_ERR(svn_wc__wq_build_file_remove(&work_item, mt->db, mt->local_abspath,
                                       result_target,
                                       result_pool, scratch_pool));

  *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);

  return SVN_NO_ERROR;
}
