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
struct TYPE_5__ {char* repos_root; } ;
typedef  TYPE_1__ svn_ra_svn_conn_t ;
struct TYPE_6__ {TYPE_1__* conn; } ;
typedef  TYPE_2__ svn_ra_svn__session_baton_t ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef  TYPE_3__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_RA_SVN_BAD_VERSION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *FUNC2(svn_ra_session_t *session, const char **url,
                                          apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;

  if (!conn->repos_root)
    return FUNC1(SVN_ERR_RA_SVN_BAD_VERSION, NULL,
                            FUNC0("Server did not send repository root"));
  *url = conn->repos_root;
  return SVN_NO_ERROR;
}