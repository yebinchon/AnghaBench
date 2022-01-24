#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_9__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_progress_notify_func_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
struct TYPE_10__ {scalar_t__ format; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_FS__MIN_REP_SHARING_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_fs_t *fs,
                  svn_revnum_t start,
                  svn_revnum_t end,
                  svn_fs_progress_notify_func_t notify_func,
                  void *notify_baton,
                  svn_cancel_func_t cancel_func,
                  void *cancel_baton,
                  apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  /* Input validation. */
  if (! FUNC1(start))
    start = 0;
  if (! FUNC1(end))
    {
      FUNC0(FUNC4(&end, fs, pool));
    }

  FUNC0(FUNC2(start, fs, pool));
  FUNC0(FUNC2(end, fs, pool));

  /* log/phys index consistency.  We need to check them first to make
     sure we can access the rev / pack files in format7. */
  if (FUNC3(fs))
    FUNC0(FUNC5(fs, start, end,
                                           notify_func, notify_baton,
                                           cancel_func, cancel_baton, pool));

  /* rep cache consistency */
  if (ffd->format >= SVN_FS_FS__MIN_REP_SHARING_FORMAT)
    FUNC0(FUNC6(fs, start, end, notify_func, notify_baton,
                             cancel_func, cancel_baton, pool));

  return SVN_NO_ERROR;
}