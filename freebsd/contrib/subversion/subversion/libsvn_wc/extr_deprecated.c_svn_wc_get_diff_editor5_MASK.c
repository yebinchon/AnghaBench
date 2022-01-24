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
typedef  int /*<<< orphan*/  svn_wc_diff_callbacks3_t ;
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct diff_callbacks3_wrapper_baton {int /*<<< orphan*/  anchor_abspath; int /*<<< orphan*/  anchor; int /*<<< orphan*/ * db; void* baton; int /*<<< orphan*/  const* callbacks3; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct diff_callbacks3_wrapper_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  diff_callbacks3_wrapper ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,struct diff_callbacks3_wrapper_baton*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_wc_adm_access_t *anchor,
                        const char *target,
                        const svn_wc_diff_callbacks3_t *callbacks,
                        void *callback_baton,
                        svn_depth_t depth,
                        svn_boolean_t ignore_ancestry,
                        svn_boolean_t use_text_base,
                        svn_boolean_t reverse_order,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        const apr_array_header_t *changelist_filter,
                        const svn_delta_editor_t **editor,
                        void **edit_baton,
                        apr_pool_t *pool)
{
  struct diff_callbacks3_wrapper_baton *b = FUNC1(pool, sizeof(*b));
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *db = FUNC3(anchor);

  FUNC0(FUNC4(&wc_ctx, NULL, db, pool));

  b->callbacks3 = callbacks;
  b->baton = callback_baton;
  b->db = db;
  b->anchor = FUNC5(anchor);
  b->anchor_abspath = FUNC2(anchor);

  FUNC0(FUNC6(editor,
                                   edit_baton,
                                   wc_ctx,
                                   b->anchor_abspath,
                                   target,
                                   depth,
                                   ignore_ancestry,
                                   FALSE,
                                   FALSE,
                                   use_text_base,
                                   reverse_order,
                                   FALSE,
                                   changelist_filter,
                                   &diff_callbacks3_wrapper,
                                   b,
                                   cancel_func,
                                   cancel_baton,
                                   pool,
                                   pool));

  /* Can't destroy wc_ctx. It is used by the diff editor */

   return SVN_NO_ERROR;
}