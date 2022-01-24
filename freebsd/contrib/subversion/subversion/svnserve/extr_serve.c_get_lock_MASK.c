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
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {TYPE_2__* repository; } ;
typedef  TYPE_3__ server_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {int /*<<< orphan*/  fs; TYPE_1__* fs_path; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_authz_read ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_ra_svn_conn_t *conn,
         apr_pool_t *pool,
         svn_ra_svn__list_t *params,
         void *baton)
{
  server_baton_t *b = baton;
  const char *path;
  const char *full_path;
  svn_lock_t *l;

  FUNC1(FUNC7(params, "c", &path));

  full_path = FUNC5(b->repository->fs_path->data,
                               FUNC9(path, pool), pool);

  FUNC1(FUNC3(conn, pool, b, svn_authz_read,
                           full_path, FALSE));
  FUNC1(FUNC2(b, conn, pool, "get-lock %s",
                      FUNC6(full_path, pool)));

  FUNC0(FUNC4(&l, b->repository->fs, full_path, pool));

  FUNC1(FUNC8(conn, pool, "w((!", "success"));
  if (l)
    FUNC1(FUNC10(conn, pool, l));
  FUNC1(FUNC8(conn, pool, "!))"));

  return SVN_NO_ERROR;
}