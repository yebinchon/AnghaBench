
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_conflict_choice_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_diff_conflict_display_style_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int merge_showing_conflicts (char const**,int *,char const*,int ,int const*,char const*,char const*,char const*,int ,int ,void*,int *,int *) ;
 int remove_artifact_file_if_exists (int **,scalar_t__*,int *,char const*,char const*,int *,int *) ;
 int save_merge_result (int **,int *,char const*,char const*,int *,int *) ;
 int svn_diff_conflict_display_latest ;
 int svn_diff_conflict_display_modified ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_file_del_none ;
 int svn_wc__conflict_read_text_conflict (char const**,char const**,char const**,int *,char const*,int const*,int *,int *) ;
 int svn_wc__wq_build_file_install (int **,int *,char const*,char const*,scalar_t__,scalar_t__,int *,int *) ;
 int svn_wc__wq_build_file_remove (int **,int *,char const*,char const*,int *,int *) ;
 int * svn_wc__wq_merge (int *,int *,int *) ;
__attribute__((used)) static svn_error_t *
build_text_conflict_resolve_items(svn_skel_t **work_items,
                                  svn_boolean_t *found_artifact,
                                  svn_wc__db_t *db,
                                  const char *local_abspath,
                                  const svn_skel_t *conflict,
                                  svn_wc_conflict_choice_t choice,
                                  const char *merged_file,
                                  svn_boolean_t save_merged,
                                  const apr_array_header_t *merge_options,
                                  svn_cancel_func_t cancel_func,
                                  void *cancel_baton,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  const char *mine_abspath;
  const char *their_old_abspath;
  const char *their_abspath;
  svn_skel_t *work_item;
  const char *install_from_abspath = ((void*)0);
  svn_boolean_t remove_source = FALSE;

  *work_items = ((void*)0);

  if (found_artifact)
    *found_artifact = FALSE;

  SVN_ERR(svn_wc__conflict_read_text_conflict(&mine_abspath,
                                              &their_old_abspath,
                                              &their_abspath,
                                              db, local_abspath,
                                              conflict,
                                              scratch_pool, scratch_pool));

  if (save_merged)
    SVN_ERR(save_merge_result(work_items,
                              db, local_abspath,
                              merged_file
                                ? merged_file
                                : local_abspath,
                              result_pool, scratch_pool));

  if (choice == 130)
    return SVN_NO_ERROR;

  switch (choice)
    {


      case 134:
        {
          install_from_abspath = their_old_abspath;
          break;
        }
      case 128:
        {
          install_from_abspath = their_abspath;
          break;
        }
      case 131:
        {





          install_from_abspath = mine_abspath
                                   ? mine_abspath
                                   : local_abspath;
          break;
        }
      case 129:
      case 132:
        {
          svn_diff_conflict_display_style_t style
            = choice == 129
                ? svn_diff_conflict_display_latest
                : svn_diff_conflict_display_modified;

          if (mine_abspath == ((void*)0))
            return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                                     _("Conflict on '%s' cannot be resolved to "
                                       "'theirs-conflict' or 'mine-conflict' "
                                       "because a merged version of the file "
                                       "cannot be created."),
                                     svn_dirent_local_style(local_abspath,
                                                            scratch_pool));

          SVN_ERR(merge_showing_conflicts(&install_from_abspath,
                                          db, local_abspath,
                                          style, merge_options,
                                          their_old_abspath,
                                          mine_abspath,
                                          their_abspath,

                                          svn_io_file_del_none,
                                          cancel_func, cancel_baton,
                                          scratch_pool, scratch_pool));
          remove_source = TRUE;
          break;
        }







      case 133:
        {
          install_from_abspath = merged_file
                                  ? merged_file
                                  : local_abspath;
          break;
        }
      case 130:
        {

          return SVN_NO_ERROR;
        }
      default:
        SVN_ERR_ASSERT(choice == 130);
    }

  if (install_from_abspath == ((void*)0))
    return svn_error_createf(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, ((void*)0),
                             _("Conflict on '%s' could not be resolved "
                               "because the chosen version of the file "
                               "is not available."),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));



  SVN_ERR(svn_wc__wq_build_file_install(&work_item,
                                        db, local_abspath,
                                        install_from_abspath,
                                        FALSE ,
                                        FALSE ,
                                        result_pool, scratch_pool));
  *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);

  if (remove_source)
    {
      SVN_ERR(svn_wc__wq_build_file_remove(&work_item,
                                           db, local_abspath,
                                           install_from_abspath,
                                           result_pool, scratch_pool));
      *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);
    }

  SVN_ERR(remove_artifact_file_if_exists(&work_item, found_artifact,
                                         db, local_abspath,
                                         their_old_abspath,
                                         result_pool, scratch_pool));
  *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);

  SVN_ERR(remove_artifact_file_if_exists(&work_item, found_artifact,
                                         db, local_abspath,
                                         their_abspath,
                                         result_pool, scratch_pool));
  *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);

  SVN_ERR(remove_artifact_file_if_exists(&work_item, found_artifact,
                                         db, local_abspath,
                                         mine_abspath,
                                         result_pool, scratch_pool));
  *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);

  return SVN_NO_ERROR;
}
