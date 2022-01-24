#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_lock_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ SVN_ERR_FS_LOCK_EXPIRED ; 
 scalar_t__ SVN_ERR_FS_NO_SUCH_LOCK ; 
 TYPE_1__* SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_fs_t *fs,
                svn_lock_t **lock_p,
                const char *path,
                svn_boolean_t have_write_lock,
                apr_pool_t *pool)
{
  svn_lock_t *lock;
  svn_error_t *err;

  err = FUNC1(&lock, fs, path, have_write_lock, FALSE, pool);

  /* We've deliberately decided that this function doesn't tell the
     caller *why* the lock is unavailable.  */
  if (err && ((err->apr_err == SVN_ERR_FS_NO_SUCH_LOCK)
              || (err->apr_err == SVN_ERR_FS_LOCK_EXPIRED)))
    {
      FUNC2(err);
      *lock_p = NULL;
      return SVN_NO_ERROR;
    }
  else
    FUNC0(err);

  *lock_p = lock;
  return SVN_NO_ERROR;
}