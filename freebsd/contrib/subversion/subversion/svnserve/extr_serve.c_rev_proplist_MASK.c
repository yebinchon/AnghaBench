#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {TYPE_1__* repository; } ;
typedef  TYPE_2__ server_baton_t ;
struct TYPE_10__ {int /*<<< orphan*/ * conn; TYPE_2__* server; } ;
typedef  TYPE_3__ authz_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_8__ {int /*<<< orphan*/  repos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_ra_svn_conn_t *conn,
             apr_pool_t *pool,
             svn_ra_svn__list_t *params,
             void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  apr_hash_t *props;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  FUNC1(FUNC5(params, "r", &rev));
  FUNC1(FUNC3(b, conn, pool, "%s", FUNC4(rev, pool)));

  FUNC1(FUNC9(conn, pool, b));
  FUNC0(FUNC8(&props, b->repository->repos,
                                             rev,
                                             FUNC2(b),
                                             &ab, pool));
  FUNC1(FUNC7(conn, pool, "w((!", "success"));
  FUNC1(FUNC6(conn, pool, props));
  FUNC1(FUNC7(conn, pool, "!))"));
  return SVN_NO_ERROR;
}