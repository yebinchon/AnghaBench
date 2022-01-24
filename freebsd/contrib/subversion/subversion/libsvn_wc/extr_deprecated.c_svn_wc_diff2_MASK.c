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
typedef  int /*<<< orphan*/  svn_wc_diff_callbacks_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct diff_callbacks_wrapper_baton {void* baton; int /*<<< orphan*/  const* callbacks; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct diff_callbacks_wrapper_baton* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  diff_callbacks_wrapper ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,struct diff_callbacks_wrapper_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(svn_wc_adm_access_t *anchor,
             const char *target,
             const svn_wc_diff_callbacks_t *callbacks,
             void *callback_baton,
             svn_boolean_t recurse,
             svn_boolean_t ignore_ancestry,
             apr_pool_t *pool)
{
  struct diff_callbacks_wrapper_baton *b = FUNC1(pool, sizeof(*b));
  b->callbacks = callbacks;
  b->baton = callback_baton;
  return FUNC2(anchor, target, &diff_callbacks_wrapper, b,
                      FUNC0(recurse), ignore_ancestry,
                      NULL, pool);
}