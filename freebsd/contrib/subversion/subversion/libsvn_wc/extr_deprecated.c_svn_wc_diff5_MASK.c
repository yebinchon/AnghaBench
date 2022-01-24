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
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct diff_callbacks3_wrapper_baton {int /*<<< orphan*/  anchor_abspath; int /*<<< orphan*/  anchor; void* baton; int /*<<< orphan*/  const* callbacks3; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct diff_callbacks3_wrapper_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  diff_callbacks3_wrapper ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct diff_callbacks3_wrapper_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_wc_adm_access_t *anchor,
             const char *target,
             const svn_wc_diff_callbacks3_t *callbacks,
             void *callback_baton,
             svn_depth_t depth,
             svn_boolean_t ignore_ancestry,
             const apr_array_header_t *changelist_filter,
             apr_pool_t *pool)
{
  struct diff_callbacks3_wrapper_baton *b = FUNC1(pool, sizeof(*b));
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *db = FUNC5(anchor);

  FUNC0(FUNC6(&wc_ctx, NULL, db, pool));

  b->callbacks3 = callbacks;
  b->baton = callback_baton;
  b->anchor = FUNC7(anchor);
  b->anchor_abspath = FUNC4(anchor);

  FUNC0(FUNC9(wc_ctx,
                       FUNC2(b->anchor_abspath, target, pool),
                       &diff_callbacks3_wrapper,
                       b,
                       depth,
                       ignore_ancestry,
                       FALSE,
                       FALSE,
                       changelist_filter,
                       NULL, NULL,
                       pool));

  return FUNC3(FUNC8(wc_ctx));
}