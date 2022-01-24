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
struct TYPE_2__ {int /*<<< orphan*/  report_baton; scalar_t__ err; } ;
typedef  TYPE_1__ report_driver_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const**) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC4(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                svn_ra_svn__list_t *params, void *baton)
{
  report_driver_baton_t *b = baton;
  const char *path;

  FUNC0(FUNC1(params, "c", &path));
  path = FUNC2(path, pool);
  if (!b->err)
    b->err = FUNC3(b->report_baton, path, pool);
  return SVN_NO_ERROR;
}