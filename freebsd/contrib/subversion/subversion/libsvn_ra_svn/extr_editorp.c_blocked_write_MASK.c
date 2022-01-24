#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  done; } ;
typedef  TYPE_1__ ra_svn_driver_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC4(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                  void *baton)
{
  ra_svn_driver_state_t *ds = baton;
  const char *cmd;
  svn_ra_svn__list_t *params;

  /* We blocked trying to send an error.  Read and discard an editing
   * command in order to avoid deadlock. */
  FUNC0(FUNC2(conn, pool, "wl", &cmd, &params));
  if (FUNC1(cmd, "abort-edit") == 0)
    {
      ds->done = TRUE;
      FUNC3(conn, NULL, NULL);
    }
  return SVN_NO_ERROR;
}