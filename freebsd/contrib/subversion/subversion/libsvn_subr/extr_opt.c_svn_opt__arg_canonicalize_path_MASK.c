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
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FILEPATH_TRUENAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(const char **path_out, const char *path_in,
                               apr_pool_t *pool)
{
  const char *apr_target;
  char *truenamed_target; /* APR-encoded */
  apr_status_t apr_err;

  /* canonicalize case, and change all separators to '/'. */
  FUNC1(FUNC7(&apr_target, path_in, pool));
  apr_err = FUNC3(&truenamed_target, "", apr_target,
                               APR_FILEPATH_TRUENAME, pool);

  if (!apr_err)
    /* We have a canonicalized APR-encoded target now. */
    apr_target = truenamed_target;
  else if (FUNC0(apr_err))
    /* It's okay for the file to not exist, that just means we
       have to accept the case given to the client. We'll use
       the original APR-encoded target. */
    ;
  else
    return FUNC6(apr_err, NULL,
                             FUNC2("Error resolving case of '%s'"),
                             FUNC5(path_in, pool));

  /* convert back to UTF-8. */
  FUNC1(FUNC8(path_out, apr_target, pool));
  *path_out = FUNC4(*path_out, pool);

  return SVN_NO_ERROR;
}