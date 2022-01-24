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
typedef  int /*<<< orphan*/  hex ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int APR_MD5_DIGESTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_NOT_AUTHORIZED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

svn_error_t *FUNC9(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                     const char *user, const char *password,
                                     const char **message)
{
  const char *status, *str, *reply;
  unsigned char digest[APR_MD5_DIGESTSIZE];
  char hex[2 * APR_MD5_DIGESTSIZE + 1];

  /* Read the server challenge. */
  FUNC0(FUNC7(conn, pool, "w(?c)", &status, &str));
  if (FUNC5(status, "failure") == 0 && str)
    {
      *message = str;
      return SVN_NO_ERROR;
    }
  else if (FUNC5(status, "step") != 0 || !str)
    return FUNC6(SVN_ERR_RA_NOT_AUTHORIZED, NULL,
                            FUNC1("Unexpected server response to authentication"));

  /* Write our response. */
  FUNC3(digest, str, password);
  FUNC4(hex, digest);
  hex[sizeof(hex) - 1] = '\0';
  reply = FUNC2(pool, "%s %s", user, hex);
  FUNC0(FUNC8(conn, pool, reply));

  /* Read the success or failure response from the server. */
  FUNC0(FUNC7(conn, pool, "w(?c)", &status, &str));
  if (FUNC5(status, "failure") == 0 && str)
    {
      *message = str;
      return SVN_NO_ERROR;
    }
  else if (FUNC5(status, "success") != 0 || str)
    return FUNC6(SVN_ERR_RA_NOT_AUTHORIZED, NULL,
                            FUNC1("Unexpected server response to authentication"));

  *message = NULL;
  return SVN_NO_ERROR;
}