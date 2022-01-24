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
struct TYPE_2__ {int /*<<< orphan*/  report_baton; scalar_t__ err; int /*<<< orphan*/  sb; } ;
typedef  TYPE_1__ report_driver_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *FUNC3(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                  svn_ra_svn__list_t *params, void *baton)
{
  report_driver_baton_t *b = baton;

  /* No arguments to parse. */
  FUNC0(FUNC2(conn, pool, b->sb));
  if (!b->err)
    b->err = FUNC1(b->report_baton, pool);
  return SVN_NO_ERROR;
}