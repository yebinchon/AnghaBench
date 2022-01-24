#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_4__ {int /*<<< orphan*/  auth_baton; scalar_t__ is_tunneled; int /*<<< orphan*/  realm_prefix; int /*<<< orphan*/ * conn; } ;
typedef  TYPE_1__ svn_ra_svn__session_baton_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_auth_iterstate_t ;
struct TYPE_5__ {char* username; char* password; } ;
typedef  TYPE_2__ svn_auth_cred_simple_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_AUTH_CRED_SIMPLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_NOT_AUTHORIZED ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_NO_MECHANISMS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void**,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*,char*) ; 

svn_error_t *
FUNC12(svn_ra_svn__session_baton_t *sess,
                             const svn_ra_svn__list_t *mechlist,
                             const char *realm, apr_pool_t *pool)
{
  svn_ra_svn_conn_t *conn = sess->conn;
  const char *realmstring, *user, *password, *msg;
  svn_auth_iterstate_t *iterstate;
  void *creds;

  realmstring = FUNC2(pool, "%s %s", sess->realm_prefix, realm);

  if (sess->is_tunneled && FUNC11(mechlist, "EXTERNAL"))
    {
        /* Ask the server to use the tunnel connection environment (on
        * Unix, that means uid) to determine the authentication name. */
      FUNC0(FUNC9(conn, pool, "EXTERNAL", ""));
      return FUNC3(conn, pool);
    }
  else if (FUNC11(mechlist, "ANONYMOUS"))
    {
      FUNC0(FUNC9(conn, pool, "ANONYMOUS", ""));
      return FUNC3(conn, pool);
    }
  else if (FUNC11(mechlist, "CRAM-MD5"))
    {
      FUNC0(FUNC4(&creds, &iterstate,
                                         SVN_AUTH_CRED_SIMPLE, realmstring,
                                         sess->auth_baton, pool));
      if (!creds)
        return FUNC7(SVN_ERR_RA_NOT_AUTHORIZED, NULL,
                                FUNC1("Can't get password"));
      while (creds)
        {
          user = ((svn_auth_cred_simple_t *) creds)->username;
          password = ((svn_auth_cred_simple_t *) creds)->password;
          FUNC0(FUNC9(conn, pool, "CRAM-MD5", NULL));
          FUNC0(FUNC10(conn, pool, user, password, &msg));
          if (!msg)
            break;
          FUNC0(FUNC5(&creds, iterstate, pool));
        }
      if (!creds)
        return FUNC8(SVN_ERR_RA_NOT_AUTHORIZED, NULL,
                                FUNC1("Authentication error from server: %s"),
                                msg);
      FUNC0(FUNC6(iterstate, pool));
      return SVN_NO_ERROR;
    }
  else
    return FUNC7(SVN_ERR_RA_SVN_NO_MECHANISMS, NULL, NULL);
}