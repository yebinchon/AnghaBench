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
typedef  int /*<<< orphan*/  svn_wc_status_func3_t ;
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct status4_wrapper_baton {char const* anchor_abspath; int /*<<< orphan*/ * anchor_relpath; int /*<<< orphan*/ * wc_ctx; void* old_baton; int /*<<< orphan*/  old_func; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 struct status4_wrapper_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  status4_wrapper_func ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const**,void**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct status4_wrapper_baton*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(const svn_delta_editor_t **editor,
                          void **edit_baton,
                          void **set_locks_baton,
                          svn_revnum_t *edit_revision,
                          svn_wc_adm_access_t *anchor,
                          const char *target,
                          svn_depth_t depth,
                          svn_boolean_t get_all,
                          svn_boolean_t no_ignore,
                          const apr_array_header_t *ignore_patterns,
                          svn_wc_status_func3_t status_func,
                          void *status_baton,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          svn_wc_traversal_info_t *traversal_info,
                          apr_pool_t *pool)
{
  struct status4_wrapper_baton *swb = FUNC1(pool, sizeof(*swb));
  svn_wc__db_t *wc_db;
  svn_wc_context_t *wc_ctx;
  const char *anchor_abspath;

  swb->old_func = status_func;
  swb->old_baton = status_baton;

  wc_db = FUNC6(anchor);

  FUNC0(FUNC7(&wc_ctx, NULL /* config */,
                                         wc_db, pool));

  swb->wc_ctx = wc_ctx;

  anchor_abspath = FUNC5(anchor);

  if (!FUNC3(FUNC8(anchor)))
    {
      swb->anchor_abspath = anchor_abspath;
      swb->anchor_relpath = FUNC8(anchor);
    }
  else
    {
      swb->anchor_abspath = NULL;
      swb->anchor_relpath = NULL;
    }

  /* Before subversion 1.7 status always handled depth as sticky. 1.7 made
     the output of svn status by default match the result of what would be
     updated by a similar svn update. (Following the documentation) */

  FUNC0(FUNC9(editor, edit_baton, set_locks_baton,
                                    edit_revision, wc_ctx, anchor_abspath,
                                    target, depth, get_all,
                                    no_ignore,
                                    (depth != svn_depth_unknown) /*as_sticky*/,
                                    FALSE /* server_performs_filtering */,
                                    ignore_patterns,
                                    status4_wrapper_func, swb,
                                    cancel_func, cancel_baton,
                                    pool, pool));

  if (traversal_info)
    {
      const char *local_path = FUNC8(anchor);
      const char *local_abspath = anchor_abspath;
      if (*target)
        {
          local_path = FUNC4(local_path, target, pool);
          local_abspath = FUNC4(local_abspath, target, pool);
        }

      FUNC0(FUNC2(wc_ctx, local_abspath, local_path, depth,
                                    traversal_info, TRUE, TRUE,
                                    pool));
    }

  /* We can't destroy wc_ctx here, because the editor needs it while it's
     driven. */
  return SVN_NO_ERROR;
}