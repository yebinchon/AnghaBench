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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_6__ {int /*<<< orphan*/ * conn; } ;
typedef  TYPE_1__ svn_ra_svn__session_baton_t ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_RA_SVN_CAP_ATOMIC_REVPROPS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static svn_error_t *FUNC7(svn_ra_session_t *session, svn_revnum_t rev,
                                           const char *name,
                                           const svn_string_t *const *old_value_p,
                                           const svn_string_t *value,
                                           apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_boolean_t dont_care;
  const svn_string_t *old_value;
  svn_boolean_t has_atomic_revprops;

  FUNC0(FUNC3(session, &has_atomic_revprops,
                                SVN_RA_SVN_CAP_ATOMIC_REVPROPS,
                                pool));

  if (old_value_p)
    {
      /* How did you get past the same check in svn_ra_change_rev_prop2()? */
      FUNC1(has_atomic_revprops);

      dont_care = FALSE;
      old_value = *old_value_p;
    }
  else
    {
      dont_care = TRUE;
      old_value = NULL;
    }

  if (has_atomic_revprops)
    FUNC0(FUNC6(conn, pool, rev, name,
                                                   value, dont_care,
                                                   old_value));
  else
    FUNC0(FUNC5(conn, pool, rev, name,
                                                  value));

  FUNC0(FUNC2(sess_baton, pool));
  FUNC0(FUNC4(conn, pool, ""));
  return SVN_NO_ERROR;
}