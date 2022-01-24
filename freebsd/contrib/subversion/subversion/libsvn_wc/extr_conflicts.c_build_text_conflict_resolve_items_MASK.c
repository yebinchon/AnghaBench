#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int svn_wc_conflict_choice_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_conflict_display_style_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_diff_conflict_display_latest ; 
 int /*<<< orphan*/  svn_diff_conflict_display_modified ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC8 (char const**,char const**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  svn_wc_conflict_choose_base 134 
#define  svn_wc_conflict_choose_merged 133 
#define  svn_wc_conflict_choose_mine_conflict 132 
#define  svn_wc_conflict_choose_mine_full 131 
#define  svn_wc_conflict_choose_postpone 130 
#define  svn_wc_conflict_choose_theirs_conflict 129 
#define  svn_wc_conflict_choose_theirs_full 128 

__attribute__((used)) static svn_error_t *
FUNC12(svn_skel_t **work_items,
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
  const char *install_from_abspath = NULL;
  svn_boolean_t remove_source = FALSE;

  *work_items = NULL;

  if (found_artifact)
    *found_artifact = FALSE;

  FUNC0(FUNC8(&mine_abspath,
                                              &their_old_abspath,
                                              &their_abspath,
                                              db, local_abspath,
                                              conflict,
                                              scratch_pool, scratch_pool));

  if (save_merged)
    FUNC0(FUNC5(work_items,
                              db, local_abspath,
                              merged_file
                                ? merged_file
                                : local_abspath,
                              result_pool, scratch_pool));

  if (choice == svn_wc_conflict_choose_postpone)
    return SVN_NO_ERROR;

  switch (choice)
    {
      /* If the callback wants to use one of the fulltexts
         to resolve the conflict, so be it.*/
      case svn_wc_conflict_choose_base:
        {
          install_from_abspath = their_old_abspath;
          break;
        }
      case svn_wc_conflict_choose_theirs_full:
        {
          install_from_abspath = their_abspath;
          break;
        }
      case svn_wc_conflict_choose_mine_full:
        {
          /* In case of selecting to resolve the conflict choosing the full
             own file, allow the text conflict resolution to just take the
             existing local file if no merged file was present (case: binary
             file conflicts do not generate a locally merge file).
          */
          install_from_abspath = mine_abspath
                                   ? mine_abspath
                                   : local_abspath;
          break;
        }
      case svn_wc_conflict_choose_theirs_conflict:
      case svn_wc_conflict_choose_mine_conflict:
        {
          svn_diff_conflict_display_style_t style
            = choice == svn_wc_conflict_choose_theirs_conflict
                ? svn_diff_conflict_display_latest
                : svn_diff_conflict_display_modified;

          if (mine_abspath == NULL)
            return FUNC7(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                                     FUNC2("Conflict on '%s' cannot be resolved to "
                                       "'theirs-conflict' or 'mine-conflict' "
                                       "because a merged version of the file "
                                       "cannot be created."),
                                     FUNC6(local_abspath,
                                                            scratch_pool));

          FUNC0(FUNC3(&install_from_abspath,
                                          db, local_abspath,
                                          style, merge_options,
                                          their_old_abspath,
                                          mine_abspath,
                                          their_abspath,
                                          /* ### why not same as other caller? */
                                          svn_io_file_del_none,
                                          cancel_func, cancel_baton,
                                          scratch_pool, scratch_pool));
          remove_source = TRUE;
          break;
        }

        /* For the case of 3-way file merging, we don't
           really distinguish between these return values;
           if the callback claims to have "generally
           resolved" the situation, we still interpret
           that as "OK, we'll assume the merged version is
           good to use". */
      case svn_wc_conflict_choose_merged:
        {
          install_from_abspath = merged_file
                                  ? merged_file
                                  : local_abspath;
          break;
        }
      case svn_wc_conflict_choose_postpone:
        {
          /* Assume conflict remains. */
          return SVN_NO_ERROR;
        }
      default:
        FUNC1(choice == svn_wc_conflict_choose_postpone);
    }

  if (install_from_abspath == NULL)
    return FUNC7(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                             FUNC2("Conflict on '%s' could not be resolved "
                               "because the chosen version of the file "
                               "is not available."),
                             FUNC6(local_abspath,
                                                    scratch_pool));

  /* ### It would be nice if we could somehow pass RECORD_FILEINFO
         as true in some easy cases. */
  FUNC0(FUNC9(&work_item,
                                        db, local_abspath,
                                        install_from_abspath,
                                        FALSE /* use_commit_times */,
                                        FALSE /* record_fileinfo */,
                                        result_pool, scratch_pool));
  *work_items = FUNC11(*work_items, work_item, result_pool);

  if (remove_source)
    {
      FUNC0(FUNC10(&work_item,
                                           db, local_abspath,
                                           install_from_abspath,
                                           result_pool, scratch_pool));
      *work_items = FUNC11(*work_items, work_item, result_pool);
    }

  FUNC0(FUNC4(&work_item, found_artifact,
                                         db, local_abspath,
                                         their_old_abspath,
                                         result_pool, scratch_pool));
  *work_items = FUNC11(*work_items, work_item, result_pool);

  FUNC0(FUNC4(&work_item, found_artifact,
                                         db, local_abspath,
                                         their_abspath,
                                         result_pool, scratch_pool));
  *work_items = FUNC11(*work_items, work_item, result_pool);

  FUNC0(FUNC4(&work_item, found_artifact,
                                         db, local_abspath,
                                         mine_abspath,
                                         result_pool, scratch_pool));
  *work_items = FUNC11(*work_items, work_item, result_pool);

  return SVN_NO_ERROR;
}