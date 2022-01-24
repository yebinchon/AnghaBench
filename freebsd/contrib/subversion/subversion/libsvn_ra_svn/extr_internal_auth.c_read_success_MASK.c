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
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_NOT_AUTHORIZED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const**,char const**) ; 

__attribute__((used)) static svn_error_t *FUNC6(svn_ra_svn_conn_t *conn, apr_pool_t *pool)
{
  const char *status, *arg;

  FUNC0(FUNC5(conn, pool, "w(?c)", &status, &arg));
  if (FUNC2(status, "failure") == 0 && arg)
    return FUNC4(SVN_ERR_RA_NOT_AUTHORIZED, NULL,
                             FUNC1("Authentication error from server: %s"), arg);
  else if (FUNC2(status, "success") != 0 || arg)
    return FUNC3(SVN_ERR_RA_NOT_AUTHORIZED, NULL,
                            FUNC1("Unexpected server response to authentication"));
  return SVN_NO_ERROR;
}