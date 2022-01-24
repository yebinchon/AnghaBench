#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_4__ {char const* local_abspath; int /*<<< orphan*/  db; int /*<<< orphan*/  old_actual_props; int /*<<< orphan*/  merge_options; int /*<<< orphan*/  diff3_cmd; int /*<<< orphan*/  wri_abspath; } ;
typedef  TYPE_1__ merge_target_t ;
typedef  enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const**,char const**,char const**,TYPE_1__ const*,char const*,char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const**,char const*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int svn_wc_merge_conflict ; 
 int svn_wc_merge_merged ; 
 int svn_wc_merge_unchanged ; 

__attribute__((used)) static svn_error_t*
FUNC15(svn_skel_t **work_items,
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
  apr_pool_t *pool = scratch_pool;  /* ### temporary rename  */
  svn_boolean_t contains_conflicts;
  apr_file_t *result_f;
  const char *result_target;
  const char *base_name;
  const char *temp_dir;
  svn_skel_t *work_item;

  *work_items = NULL;

  base_name = FUNC4(mt->local_abspath, scratch_pool);

  /* Open a second temporary file for writing; this is where diff3
     will write the merged results.  We want to use a tempfile
     with a name that reflects the original, in case this
     ultimately winds up in a conflict resolution editor.  */
  FUNC0(FUNC10(&temp_dir, mt->db, mt->wri_abspath,
                                         pool, pool));
  FUNC0(FUNC7(&result_f, &result_target,
                                     temp_dir, base_name, ".tmp",
                                     svn_io_file_del_none, pool, pool));

  /* Run the external or internal merge, as requested. */
  if (mt->diff3_cmd)
      FUNC0(FUNC2(&contains_conflicts,
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
  else /* Use internal merge. */
    FUNC0(FUNC1(&contains_conflicts,
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

  FUNC0(FUNC5(result_f, pool));

  /* Determine the MERGE_OUTCOME, and record any conflict. */
  if (contains_conflicts)
    {
      *merge_outcome = svn_wc_merge_conflict;

      if (! dry_run)
        {
          const char *left_copy, *right_copy, *target_copy;

          /* Preserve the three conflict files */
          FUNC0(FUNC3(
                    &work_item,
                    &left_copy, &right_copy, &target_copy,
                    mt, left_abspath, right_abspath,
                    left_label, right_label, target_label,
                    detranslated_target_abspath,
                    cancel_func, cancel_baton,
                    result_pool, scratch_pool));
          *work_items = FUNC14(*work_items, work_item, result_pool);

          /* Track the conflict marker files in the metadata. */

          if (!*conflict_skel)
            *conflict_skel = FUNC9(result_pool);

          FUNC0(FUNC8(*conflict_skel,
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

      /* If 'special', then use the detranslated form of the
         target file.  This is so we don't try to follow symlinks,
         but the same treatment is probably also appropriate for
         whatever special file types we may invent in the future. */
      FUNC0(FUNC11(NULL, NULL, NULL,
                                         &special, mt->db, mt->local_abspath,
                                         mt->old_actual_props, TRUE,
                                         pool, pool));
      FUNC0(FUNC6(&same, result_target,
                                           (special ?
                                              detranslated_target_abspath :
                                              mt->local_abspath),
                                           pool));

      *merge_outcome = same ? svn_wc_merge_unchanged : svn_wc_merge_merged;
    }

  if (*merge_outcome != svn_wc_merge_unchanged && ! dry_run)
    {
      /* replace TARGET_ABSPATH with the new merged file, expanding. */
      FUNC0(FUNC12(&work_item,
                                            mt->db, mt->local_abspath,
                                            result_target,
                                            FALSE /* use_commit_times */,
                                            FALSE /* record_fileinfo */,
                                            result_pool, scratch_pool));
      *work_items = FUNC14(*work_items, work_item, result_pool);
    }

  /* Remove the tempfile after use */
  FUNC0(FUNC13(&work_item, mt->db, mt->local_abspath,
                                       result_target,
                                       result_pool, scratch_pool));

  *work_items = FUNC14(*work_items, work_item, result_pool);

  return SVN_NO_ERROR;
}