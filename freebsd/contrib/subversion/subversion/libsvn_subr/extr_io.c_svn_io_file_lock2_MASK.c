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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int32_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_FLOCK_EXCLUSIVE ; 
 int APR_FLOCK_SHARED ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  APR_READ ; 
 int /*<<< orphan*/  APR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(const char *lock_file,
                  svn_boolean_t exclusive,
                  svn_boolean_t nonblocking,
                  apr_pool_t *pool)
{
  int locktype = APR_FLOCK_SHARED;
  apr_file_t *lockfile_handle;
  apr_int32_t flags;

  if (exclusive)
    locktype = APR_FLOCK_EXCLUSIVE;

  flags = APR_READ;
  if (locktype == APR_FLOCK_EXCLUSIVE)
    flags |= APR_WRITE;

  /* locktype is never read after this block, so we don't need to bother
     setting it.  If that were to ever change, uncomment the following
     block.
  if (nonblocking)
    locktype |= APR_FLOCK_NONBLOCK;
  */

  FUNC0(FUNC1(&lockfile_handle, lock_file, flags,
                           APR_OS_DEFAULT,
                           pool));

  /* Get lock on the filehandle. */
  return FUNC2(lockfile_handle, exclusive, nonblocking, pool);
}