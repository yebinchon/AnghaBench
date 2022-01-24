#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_7__ {int /*<<< orphan*/ * conn; } ;
typedef  TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_reporter3_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_ra_session_t *session,
              const svn_ra_reporter3_t **reporter,
              void **report_baton, svn_revnum_t rev,
              const char *target, svn_depth_t depth,
              const char *switch_url,
              svn_boolean_t send_copyfrom_args,
              svn_boolean_t ignore_ancestry,
              const svn_delta_editor_t *update_editor,
              void *update_baton,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  apr_pool_t *pool = result_pool;
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_boolean_t recurse = FUNC0(depth);

  /* Callbacks may assume that all data is relative the sessions's URL. */
  FUNC1(FUNC2(session, scratch_pool));

  /* Tell the server we want to start a switch. */
  FUNC1(FUNC5(conn, pool, rev, target, recurse,
                                       switch_url, depth,
                                       send_copyfrom_args, ignore_ancestry));
  FUNC1(FUNC3(sess_baton, pool));

  /* Fetch a reporter for the caller to drive.  The reporter will drive
   * update_editor upon finish_report(). */
  FUNC1(FUNC4(sess_baton, pool, update_editor, update_baton,
                              target, depth, reporter, report_baton));
  return SVN_NO_ERROR;
}