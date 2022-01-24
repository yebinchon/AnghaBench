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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_6__ {int /*<<< orphan*/ * conn; } ;
typedef  TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *FUNC6(svn_ra_session_t *session,
                                      const char *path, svn_revnum_t rev,
                                      svn_node_kind_t *kind, apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  const char *kind_word;

  path = FUNC2(session, path, pool);
  FUNC0(FUNC5(conn, pool, path, rev));
  FUNC0(FUNC1(sess_baton, pool));
  FUNC0(FUNC4(conn, pool, "w", &kind_word));
  *kind = FUNC3(kind_word);
  return SVN_NO_ERROR;
}