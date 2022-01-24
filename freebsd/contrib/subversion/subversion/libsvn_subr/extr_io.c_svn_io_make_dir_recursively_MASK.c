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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  ERROR_SHARING_VIOLATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*) ; 

svn_error_t *
FUNC9(const char *path, apr_pool_t *pool)
{
  const char *path_apr;
  apr_status_t apr_err;

  if (FUNC8(path))
    /* Empty path (current dir) is assumed to always exist,
       so we do nothing, per docs. */
    return SVN_NO_ERROR;

  FUNC1(FUNC5(&path_apr, path, pool));

  apr_err = FUNC4(path_apr, APR_OS_DEFAULT, pool);
#ifdef WIN32
  /* Don't retry on ERROR_ACCESS_DENIED, as that typically signals a
     permanent error */
  if (apr_err == APR_FROM_OS_ERROR(ERROR_SHARING_VIOLATION))
    WIN32_RETRY_LOOP(apr_err, apr_dir_make_recursive(path_apr,
                                                     APR_OS_DEFAULT, pool));
#endif

  if (apr_err)
    return FUNC7(apr_err, FUNC3("Can't make directory '%s'"),
                              FUNC6(path, pool));

  return SVN_NO_ERROR;
}