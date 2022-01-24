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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_ra_svn_conn_t *conn,
             apr_pool_t *pool,
             svn_ra_svn__list_t *params,
             void *baton)
{
  svn_revnum_t start_rev, end_rev, rev, low_water_mark;
  svn_boolean_t send_deltas;
  server_baton_t *b = baton;
  apr_pool_t *iterpool;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  FUNC1(FUNC7(params, "rrrb", &start_rev,
                                 &end_rev, &low_water_mark,
                                 &send_deltas));

  FUNC1(FUNC12(conn, pool, b));

  iterpool = FUNC5(pool);
  for (rev = start_rev; rev <= end_rev; rev++)
    {
      apr_hash_t *props;

      FUNC4(iterpool);

      FUNC0(FUNC11(&props,
                                                 b->repository->repos, rev,
                                                 FUNC2(b),
                                                 &ab,
                                                 iterpool));
      FUNC1(FUNC10(conn, iterpool, "w(!", "revprops"));
      FUNC1(FUNC9(conn, iterpool, props));
      FUNC1(FUNC10(conn, iterpool, "!)"));

      FUNC1(FUNC3(conn, b, rev, low_water_mark,
                                  send_deltas, iterpool));

    }
  FUNC6(iterpool);

  FUNC1(FUNC8(conn, pool, ""));

  return SVN_NO_ERROR;
}