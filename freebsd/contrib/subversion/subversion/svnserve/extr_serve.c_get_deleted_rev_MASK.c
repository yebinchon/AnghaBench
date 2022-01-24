#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {TYPE_2__* repository; } ;
typedef  TYPE_3__ server_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {int /*<<< orphan*/  fs; TYPE_1__* fs_path; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_ra_svn_conn_t *conn,
                apr_pool_t *pool,
                svn_ra_svn__list_t *params,
                void *baton)
{
  server_baton_t *b = baton;
  const char *path, *full_path;
  svn_revnum_t peg_revision;
  svn_revnum_t end_revision;
  svn_revnum_t revision_deleted;

  FUNC0(FUNC3(params, "crr",
                                 &path, &peg_revision, &end_revision));
  full_path = FUNC2(b->repository->fs_path->data,
                               FUNC5(path, pool), pool);
  FUNC0(FUNC1(b, conn, pool, "get-deleted-rev"));
  FUNC0(FUNC7(conn, pool, b));
  FUNC0(FUNC6(b->repository->fs, full_path, peg_revision,
                                end_revision, &revision_deleted, pool));
  FUNC0(FUNC4(conn, pool, "r", revision_deleted));
  return SVN_NO_ERROR;
}