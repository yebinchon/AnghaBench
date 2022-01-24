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
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
#define  APR_FLOCK_EXCLUSIVE 129 
 int APR_FLOCK_NONBLOCK ; 
#define  APR_FLOCK_SHARED 128 
 int APR_FLOCK_TYPEMASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_clear_locks ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(apr_file_t *lockfile_handle,
                      svn_boolean_t exclusive,
                      svn_boolean_t nonblocking,
                      apr_pool_t *pool)
{
  int locktype = APR_FLOCK_SHARED;
  apr_status_t apr_err;
  const char *fname;

  if (exclusive)
    locktype = APR_FLOCK_EXCLUSIVE;
  if (nonblocking)
    locktype |= APR_FLOCK_NONBLOCK;

  /* We need this only in case of an error but this is cheap to get -
   * so we do it here for clarity. */
  apr_err = FUNC4(&fname, lockfile_handle);
  if (apr_err)
    return FUNC6(apr_err, FUNC2("Can't get file name"));

  /* Get lock on the filehandle. */
  apr_err = FUNC3(lockfile_handle, locktype);

  /* In deployments with two or more multithreaded servers running on
     the same system serving two or more fsfs repositories it is
     possible for a deadlock to occur when getting a write lock on
     db/txn-current-lock:

     Process 1                         Process 2
     ---------                         ---------
     thread 1: get lock in repos A
                                       thread 1: get lock in repos B
                                       thread 2: block getting lock in repos A
     thread 2: try to get lock in B *** deadlock ***

     Retry for a while for the deadlock to clear. */
  FUNC0(apr_err, FUNC3(lockfile_handle, locktype));

  if (apr_err)
    {
      switch (locktype & APR_FLOCK_TYPEMASK)
        {
        case APR_FLOCK_SHARED:
          return FUNC6(apr_err,
                                    FUNC2("Can't get shared lock on file '%s'"),
                                    FUNC7(fname, pool));
        case APR_FLOCK_EXCLUSIVE:
          return FUNC6(apr_err,
                                    FUNC2("Can't get exclusive lock on file '%s'"),
                                    FUNC7(fname, pool));
        default:
          FUNC1();
        }
    }

  /* On Windows, a process may not release file locks before closing the
     handle, and in this case the outstanding locks are unlocked by the OS.
     However, this is not recommended, because the actual unlocking may be
     postponed depending on available system resources.  We explicitly unlock
     the file as a part of the pool cleanup handler. */
  FUNC5(pool, lockfile_handle,
                            file_clear_locks,
                            apr_pool_cleanup_null);

  return SVN_NO_ERROR;
}