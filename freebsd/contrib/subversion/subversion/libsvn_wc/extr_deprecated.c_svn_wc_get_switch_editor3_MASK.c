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
typedef  int /*<<< orphan*/  svn_wc_traversal_info_t ;
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
typedef  int /*<<< orphan*/ * svn_wc_external_update_t ;
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  scalar_t__ svn_wc_conflict_resolver_func_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct traversal_info_update_baton {int /*<<< orphan*/ * traversal; int /*<<< orphan*/ * db; } ;
struct conflict_func_1to2_baton {void* inner_baton; scalar_t__ inner_func; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct traversal_info_update_baton* FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct conflict_func_1to2_baton* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * conflict_func_1to2_wrapper ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct conflict_func_1to2_baton*,int /*<<< orphan*/ *,struct traversal_info_update_baton*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * traversal_info_update ; 

svn_error_t *
FUNC10(svn_revnum_t *target_revision,
                          svn_wc_adm_access_t *anchor,
                          const char *target,
                          const char *switch_url,
                          svn_boolean_t use_commit_times,
                          svn_depth_t depth,
                          svn_boolean_t depth_is_sticky,
                          svn_boolean_t allow_unver_obstructions,
                          svn_wc_notify_func2_t notify_func,
                          void *notify_baton,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          svn_wc_conflict_resolver_func_t conflict_func,
                          void *conflict_baton,
                          const char *diff3_cmd,
                          const apr_array_header_t *preserved_exts,
                          const svn_delta_editor_t **editor,
                          void **edit_baton,
                          svn_wc_traversal_info_t *traversal_info,
                          apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *db = FUNC7(anchor);
  svn_wc_external_update_t external_func = NULL;
  struct traversal_info_update_baton *eb = NULL;
  struct conflict_func_1to2_baton *cfw = NULL;

  FUNC1(switch_url && FUNC5(switch_url, pool));

  FUNC0(FUNC8(&wc_ctx, NULL, db, pool));

  if (traversal_info)
    {
      eb = FUNC2(pool, sizeof(*eb));
      eb->db = db;
      eb->traversal = traversal_info;
      external_func = traversal_info_update;
    }

  if (conflict_func)
    {
      cfw = FUNC3(pool, sizeof(*cfw));
      cfw->inner_func = conflict_func;
      cfw->inner_baton = conflict_baton;
    }

  if (diff3_cmd)
    FUNC0(FUNC4(&diff3_cmd, diff3_cmd, pool));

  FUNC0(FUNC9(editor, edit_baton,
                                    target_revision,
                                    wc_ctx,
                                    FUNC6(anchor),
                                    target, switch_url,
                                    use_commit_times,
                                    depth, depth_is_sticky,
                                    allow_unver_obstructions,
                                    FALSE /* server_performs_filtering */,
                                    diff3_cmd,
                                    preserved_exts,
                                    NULL, NULL, /* fetch_dirents_func, baton */
                                    conflict_func ? conflict_func_1to2_wrapper
                                                  : NULL,
                                    cfw,
                                    external_func, eb,
                                    cancel_func, cancel_baton,
                                    notify_func, notify_baton,
                                    pool, pool));

  /* We can't destroy wc_ctx here, because the editor needs it while it's
     driven. */
  return SVN_NO_ERROR;
}