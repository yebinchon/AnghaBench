#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_lock_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ SVN_ERR_FS_BAD_LOCK_TOKEN ; 
 scalar_t__ SVN_ERR_FS_LOCK_EXPIRED ; 
 scalar_t__ SVN_ERR_FS_NO_SUCH_LOCK ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (char const**,int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_lock_t **lock_p,
                             const char *path,
                             trail_t *trail,
                             apr_pool_t *pool)
{
  const char *lock_token;
  svn_error_t *err;

  err = FUNC4(&lock_token, trail->fs, path,
                                   trail, pool);

  /* We've deliberately decided that this function doesn't tell the
     caller *why* the lock is unavailable.  */
  if (err && ((err->apr_err == SVN_ERR_FS_NO_SUCH_LOCK)
              || (err->apr_err == SVN_ERR_FS_LOCK_EXPIRED)
              || (err->apr_err == SVN_ERR_FS_BAD_LOCK_TOKEN)))
    {
      FUNC1(err);
      *lock_p = NULL;
      return SVN_NO_ERROR;
    }
  else
    FUNC0(err);

  /* Same situation here.  */
  err = FUNC3(lock_p, trail->fs, lock_token, trail, pool);
  if (err && ((err->apr_err == SVN_ERR_FS_LOCK_EXPIRED)
              || (err->apr_err == SVN_ERR_FS_BAD_LOCK_TOKEN)))
    {
      FUNC1(err);
      *lock_p = NULL;
      return SVN_NO_ERROR;
    }
  else
    FUNC0(err);

  return FUNC2(err);
}