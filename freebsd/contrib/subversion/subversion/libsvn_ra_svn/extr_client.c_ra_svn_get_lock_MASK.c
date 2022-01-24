#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_6__ {int /*<<< orphan*/ * conn; } ;
typedef  TYPE_1__ svn_ra_svn__session_baton_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 char* FUNC5 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static svn_error_t *FUNC8(svn_ra_session_t *session,
                                    svn_lock_t **lock,
                                    const char *path,
                                    apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess = session->priv;
  svn_ra_svn_conn_t* conn = sess->conn;
  svn_ra_svn__list_t *list;

  path = FUNC5(session, path, pool);
  FUNC1(FUNC7(conn, pool, path));

  /* Servers before 1.2 doesn't support locking.  Check this here. */
  FUNC1(FUNC3(FUNC2(sess, pool),
                                 FUNC0("Server doesn't support the get-lock "
                                    "command")));

  FUNC1(FUNC6(conn, pool, "(?l)", &list));
  if (list)
    FUNC1(FUNC4(list, pool, lock));
  else
    *lock = NULL;

  return SVN_NO_ERROR;
}