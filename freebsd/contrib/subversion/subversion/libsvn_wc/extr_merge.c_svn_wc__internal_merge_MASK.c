#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
struct TYPE_9__ {TYPE_1__* value; } ;
typedef  TYPE_2__ svn_prop_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int svn_boolean_t ;
struct TYPE_10__ {char const* local_abspath; char const* wri_abspath; char const* diff3_cmd; int /*<<< orphan*/ * old_actual_props; int /*<<< orphan*/  const* merge_options; int /*<<< orphan*/  const* prop_diff; int /*<<< orphan*/ * db; } ;
typedef  TYPE_3__ merge_target_t ;
typedef  enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_8__ {char const* data; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_MIME_TYPE ; 
 int /*<<< orphan*/  FUNC2 (char const**,TYPE_3__*,int,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,TYPE_3__*,char const*,char const*,char const*,char const*,char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int*,char const*,char const*,char const*,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,TYPE_3__*,char const*,char const*,char const*,char const*,char const*,int,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int FUNC9 (char const*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int svn_wc_merge_no_merge ; 

svn_error_t *
FUNC13(svn_skel_t **work_items,
                       svn_skel_t **conflict_skel,
                       enum svn_wc_merge_outcome_t *merge_outcome,
                       svn_wc__db_t *db,
                       const char *left_abspath,
                       const char *right_abspath,
                       const char *target_abspath,
                       const char *wri_abspath,
                       const char *left_label,
                       const char *right_label,
                       const char *target_label,
                       apr_hash_t *old_actual_props,
                       svn_boolean_t dry_run,
                       const char *diff3_cmd,
                       const apr_array_header_t *merge_options,
                       const apr_array_header_t *prop_diff,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  const char *detranslated_target_abspath;
  svn_boolean_t is_binary = FALSE;
  const svn_prop_t *mimeprop;
  svn_skel_t *work_item;
  merge_target_t mt;

  FUNC1(FUNC8(left_abspath));
  FUNC1(FUNC8(right_abspath));
  FUNC1(FUNC8(target_abspath));

  *work_items = NULL;

  /* Fill the merge target baton */
  mt.db = db;
  mt.local_abspath = target_abspath;
  mt.wri_abspath = wri_abspath;
  mt.old_actual_props = old_actual_props;
  mt.prop_diff = prop_diff;
  mt.diff3_cmd = diff3_cmd;
  mt.merge_options = merge_options;

  /* Decide if the merge target is a text or binary file. */
  if ((mimeprop = FUNC3(prop_diff, SVN_PROP_MIME_TYPE))
      && mimeprop->value)
    is_binary = FUNC9(mimeprop->value->data);
  else
    {
      const char *value = FUNC10(mt.old_actual_props,
                                             SVN_PROP_MIME_TYPE);

      is_binary = value && FUNC9(value);
    }

  FUNC0(FUNC2(&detranslated_target_abspath, &mt,
                              (! is_binary) && diff3_cmd != NULL,
                              target_abspath,
                              cancel_func, cancel_baton,
                              scratch_pool, scratch_pool));

  /* We cannot depend on the left file to contain the same eols as the
     right file. If the merge target has mods, this will mark the entire
     file as conflicted, so we need to compensate. */
  FUNC0(FUNC4(&left_abspath, prop_diff, left_abspath,
                                   cancel_func, cancel_baton,
                                   scratch_pool, scratch_pool));

  FUNC0(FUNC6(work_items, merge_outcome,
                             left_abspath, right_abspath,
                             target_abspath, detranslated_target_abspath,
                             dry_run, db, cancel_func, cancel_baton,
                             result_pool, scratch_pool));
  if (*merge_outcome == svn_wc_merge_no_merge)
    {
      /* We have a non-trivial merge.  If we classify it as a merge of
       * 'binary' files we'll just raise a conflict, otherwise we'll do
       * the actual merge of 'text' file contents. */
      if (is_binary)
        {
          /* Raise a text conflict */
          FUNC0(FUNC5(work_items,
                                    conflict_skel,
                                    merge_outcome,
                                    &mt,
                                    left_abspath,
                                    right_abspath,
                                    left_label,
                                    right_label,
                                    target_label,
                                    dry_run,
                                    detranslated_target_abspath,
                                    result_pool, scratch_pool));
        }
      else
        {
          FUNC0(FUNC7(work_items,
                                  conflict_skel,
                                  merge_outcome,
                                  &mt,
                                  left_abspath,
                                  right_abspath,
                                  left_label,
                                  right_label,
                                  target_label,
                                  dry_run,
                                  detranslated_target_abspath,
                                  cancel_func, cancel_baton,
                                  result_pool, scratch_pool));
        }
    }

  /* Merging is complete.  Regardless of text or binariness, we might
     need to tweak the executable bit on the new working file, and
     possibly make it read-only. */
  if (! dry_run)
    {
      FUNC0(FUNC11(&work_item, db,
                                               target_abspath,
                                               result_pool, scratch_pool));
      *work_items = FUNC12(*work_items, work_item, result_pool);
    }

  return SVN_NO_ERROR;
}