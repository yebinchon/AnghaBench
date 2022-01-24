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
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_clear_locks ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(apr_file_t *lockfile_handle,
                        apr_pool_t *pool)
{
  const char *fname;
  apr_status_t apr_err;

  /* We need this only in case of an error but this is cheap to get -
   * so we do it here for clarity. */
  apr_err = FUNC1(&fname, lockfile_handle);
  if (apr_err)
    return FUNC4(apr_err, FUNC0("Can't get file name"));

  /* The actual unlock attempt. */
  apr_err = FUNC2(lockfile_handle);
  if (apr_err)
    return FUNC4(apr_err, FUNC0("Can't unlock file '%s'"),
                              FUNC5(fname, pool));

  FUNC3(pool, lockfile_handle, file_clear_locks);

  return SVN_NO_ERROR;
}