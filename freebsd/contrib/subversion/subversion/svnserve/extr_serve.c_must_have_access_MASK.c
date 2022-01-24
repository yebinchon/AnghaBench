#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int svn_repos_authz_access_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_12__ {TYPE_2__* repository; TYPE_1__* client_info; } ;
typedef  TYPE_3__ server_baton_t ;
typedef  enum access_type { ____Placeholder_access_type } access_type ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_11__ {int auth_access; scalar_t__ use_sasl; scalar_t__ pwdb; } ;
struct TYPE_10__ {scalar_t__ tunnel_user; int /*<<< orphan*/ * user; } ;

/* Variables and functions */
 int READ_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_NOT_AUTHORIZED ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_CMD_ERR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int WRITE_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int,char const*,int /*<<< orphan*/ ) ; 
 int svn_authz_write ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static svn_error_t *FUNC7(svn_ra_svn_conn_t *conn,
                                     apr_pool_t *pool,
                                     server_baton_t *b,
                                     svn_repos_authz_access_t required,
                                     const char *path,
                                     svn_boolean_t needs_username)
{
  enum access_type req = (required & svn_authz_write) ?
    WRITE_ACCESS : READ_ACCESS;

  /* See whether the user already has the required access.  If so,
     nothing needs to be done.  Create the FS access and send a
     trivial auth request. */
  if (FUNC4(pool, b, required, path, needs_username))
    {
      FUNC0(FUNC2(b, pool));
      return FUNC6(conn, pool, b);
    }

  /* If the required blanket access can be obtained by authenticating,
     try that.  Unfortunately, we can't tell until after
     authentication whether authz will work or not.  We force
     requiring a username because we need one to be able to check
     authz configuration again with a different user credentials than
     the first time round. */
  if (b->client_info->user == NULL
      && b->repository->auth_access >= req
      && (b->client_info->tunnel_user || b->repository->pwdb
          || b->repository->use_sasl))
    FUNC0(FUNC1(conn, pool, b, req, TRUE));

  /* Now that an authentication has been done get the new take of
     authz on the request. */
  if (! FUNC4(pool, b, required, path, needs_username))
    return FUNC5(SVN_ERR_RA_SVN_CMD_ERR,
                            FUNC3(SVN_ERR_RA_NOT_AUTHORIZED,
                                                 NULL, NULL, b),
                            NULL);

  /* Else, access is granted, and there is much rejoicing. */
  FUNC0(FUNC2(b, pool));

  return SVN_NO_ERROR;
}