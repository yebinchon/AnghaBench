#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; TYPE_2__* client_info; TYPE_1__* repository; } ;
typedef  TYPE_3__ server_baton_t ;
typedef  enum access_type { ____Placeholder_access_type } access_type ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {char* tunnel_user; char* user; } ;
struct TYPE_5__ {int auth_access; int anon_access; scalar_t__ pwdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC5(svn_boolean_t *success,
                         svn_ra_svn_conn_t *conn,
                         const char *mech, const char *mecharg,
                         server_baton_t *b, enum access_type required,
                         svn_boolean_t needs_username,
                         apr_pool_t *scratch_pool)
{
  const char *user;
  *success = FALSE;

  if (b->repository->auth_access >= required
      && b->client_info->tunnel_user && FUNC2(mech, "EXTERNAL") == 0)
    {
      if (*mecharg && FUNC2(mecharg, b->client_info->tunnel_user) != 0)
        return FUNC3(conn, scratch_pool, "w(c)", "failure",
                                       "Requested username does not match");
      b->client_info->user = b->client_info->tunnel_user;
      FUNC0(FUNC3(conn, scratch_pool, "w()", "success"));
      *success = TRUE;
      return SVN_NO_ERROR;
    }

  if (b->repository->anon_access >= required
      && FUNC2(mech, "ANONYMOUS") == 0 && ! needs_username)
    {
      FUNC0(FUNC3(conn, scratch_pool, "w()", "success"));
      *success = TRUE;
      return SVN_NO_ERROR;
    }

  if (b->repository->auth_access >= required
      && b->repository->pwdb && FUNC2(mech, "CRAM-MD5") == 0)
    {
      FUNC0(FUNC4(conn, scratch_pool, b->repository->pwdb,
                                     &user, success));
      b->client_info->user = FUNC1(b->pool, user);
      return SVN_NO_ERROR;
    }

  return FUNC3(conn, scratch_pool, "w(c)", "failure",
                                "Must authenticate with listed mechanism");
}