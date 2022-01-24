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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_progress_notify_func_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_fs_t *fs,
                 svn_revnum_t start,
                 svn_revnum_t end,
                 svn_fs_progress_notify_func_t notify_func,
                 void *notify_baton,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *scratch_pool)
{
  /* Input validation. */
  if (! FUNC1(start))
    start = 0;
  if (! FUNC1(end))
    {
      FUNC0(FUNC3(&end, fs, scratch_pool));
    }

  FUNC0(FUNC2(start, fs, scratch_pool));
  FUNC0(FUNC2(end, fs, scratch_pool));

  /* log/phys index consistency.  We need to check them first to make
     sure we can access the rev / pack files in format7. */
  FUNC0(FUNC4(fs, start, end,
                                      notify_func, notify_baton,
                                      cancel_func, cancel_baton,
                                      scratch_pool));

  /* rep cache consistency */
  FUNC0(FUNC5(fs, start, end, notify_func, notify_baton,
                            cancel_func, cancel_baton, scratch_pool));

  return SVN_NO_ERROR;
}