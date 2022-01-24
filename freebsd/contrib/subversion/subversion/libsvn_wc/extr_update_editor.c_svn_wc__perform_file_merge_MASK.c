#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int svn_boolean_t ;
typedef  enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_6__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ apr_array_header_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int svn_wc_merge_conflict ; 
 int svn_wc_merge_unchanged ; 

svn_error_t *
FUNC10(svn_skel_t **work_items,
                           svn_skel_t **conflict_skel,
                           svn_boolean_t *found_conflict,
                           svn_wc__db_t *db,
                           const char *local_abspath,
                           const char *wri_abspath,
                           const svn_checksum_t *new_checksum,
                           const svn_checksum_t *original_checksum,
                           apr_hash_t *old_actual_props,
                           const apr_array_header_t *ext_patterns,
                           svn_revnum_t old_revision,
                           svn_revnum_t target_revision,
                           const apr_array_header_t *propchanges,
                           const char *diff3_cmd,
                           svn_cancel_func_t cancel_func,
                           void *cancel_baton,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  /* Actual file exists and has local mods:
     Now we need to let loose svn_wc__internal_merge() to merge
     the textual changes into the working file. */
  const char *oldrev_str, *newrev_str, *mine_str;
  const char *merge_left;
  svn_boolean_t delete_left = FALSE;
  const char *path_ext = "";
  const char *new_pristine_abspath;
  enum svn_wc_merge_outcome_t merge_outcome = svn_wc_merge_unchanged;
  svn_skel_t *work_item;

  *work_items = NULL;

  FUNC0(FUNC6(&new_pristine_abspath,
                                       db, wri_abspath, new_checksum,
                                       scratch_pool, scratch_pool));

  /* If we have any file extensions we're supposed to
     preserve in generated conflict file names, then find
     this path's extension.  But then, if it isn't one of
     the ones we want to keep in conflict filenames,
     pretend it doesn't have an extension at all. */
  if (ext_patterns && ext_patterns->nelts)
    {
      FUNC5(NULL, &path_ext, local_abspath, scratch_pool);
      if (! (*path_ext && FUNC4(path_ext, ext_patterns)))
        path_ext = "";
    }

  /* old_revision can be invalid when the conflict is against a
     local addition */
  if (!FUNC1(old_revision))
    old_revision = 0;

  oldrev_str = FUNC2(scratch_pool, ".r%ld%s%s",
                            old_revision,
                            *path_ext ? "." : "",
                            *path_ext ? path_ext : "");

  newrev_str = FUNC2(scratch_pool, ".r%ld%s%s",
                            target_revision,
                            *path_ext ? "." : "",
                            *path_ext ? path_ext : "");
  mine_str = FUNC2(scratch_pool, ".mine%s%s",
                          *path_ext ? "." : "",
                          *path_ext ? path_ext : "");

  if (! original_checksum)
    {
      FUNC0(FUNC3(&merge_left, db, wri_abspath,
                                 result_pool, scratch_pool));
      delete_left = TRUE;
    }
  else
    FUNC0(FUNC6(&merge_left, db, wri_abspath,
                                         original_checksum,
                                         result_pool, scratch_pool));

  /* Merge the changes from the old textbase to the new
     textbase into the file we're updating.
     Remember that this function wants full paths! */
  FUNC0(FUNC7(&work_item,
                                 conflict_skel,
                                 &merge_outcome,
                                 db,
                                 merge_left,
                                 new_pristine_abspath,
                                 local_abspath,
                                 wri_abspath,
                                 oldrev_str, newrev_str, mine_str,
                                 old_actual_props,
                                 FALSE /* dry_run */,
                                 diff3_cmd, NULL, propchanges,
                                 cancel_func, cancel_baton,
                                 result_pool, scratch_pool));

  *work_items = FUNC9(*work_items, work_item, result_pool);
  *found_conflict = (merge_outcome == svn_wc_merge_conflict);

  /* If we created a temporary left merge file, get rid of it. */
  if (delete_left)
    {
      FUNC0(FUNC8(&work_item, db, wri_abspath,
                                           merge_left,
                                           result_pool, scratch_pool));
      *work_items = FUNC9(*work_items, work_item, result_pool);
    }

  return SVN_NO_ERROR;
}