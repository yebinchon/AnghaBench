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
struct TYPE_4__ {void* notify_baton; int /*<<< orphan*/  (* notify_func ) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  last_notified_revision; } ;
typedef  TYPE_1__ verify_walker_baton_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  (* svn_fs_progress_notify_func_t ) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  verify_walker ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_fs_t *fs,
                 svn_revnum_t start,
                 svn_revnum_t end,
                 svn_fs_progress_notify_func_t notify_func,
                 void *notify_baton,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *scratch_pool)
{
  svn_boolean_t exists;

  /* rep-cache verification. */
  FUNC0(FUNC2(&exists, fs, scratch_pool));
  if (exists)
    {
      /* provide a baton to allow the reuse of open file handles between
         iterations (saves 2/3 of OS level file operations). */
      verify_walker_baton_t *baton
        = FUNC1(scratch_pool, sizeof(*baton));

      baton->last_notified_revision = SVN_INVALID_REVNUM;
      baton->notify_func = notify_func;
      baton->notify_baton = notify_baton;

      /* tell the user that we are now ready to do *something* */
      if (notify_func)
        notify_func(SVN_INVALID_REVNUM, notify_baton, scratch_pool);

      /* Do not attempt to walk the rep-cache database if its file does
         not exist,  since doing so would create it --- which may confuse
         the administrator.   Don't take any lock. */
      FUNC0(FUNC3(fs, start, end,
                                           verify_walker, baton,
                                           cancel_func, cancel_baton,
                                           scratch_pool));
    }

  return SVN_NO_ERROR;
}