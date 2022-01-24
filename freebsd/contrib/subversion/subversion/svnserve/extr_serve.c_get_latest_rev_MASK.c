#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {TYPE_1__* repository; } ;
typedef  TYPE_2__ server_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_ra_svn_conn_t *conn,
               apr_pool_t *pool,
               svn_ra_svn__list_t *params,
               void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;

  FUNC1(FUNC2(b, conn, pool, "get-latest-rev"));

  FUNC1(FUNC5(conn, pool, b));
  FUNC0(FUNC3(&rev, b->repository->fs, pool));
  FUNC1(FUNC4(conn, pool, "r", rev));
  return SVN_NO_ERROR;
}