#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
struct TYPE_12__ {TYPE_2__* repository; } ;
typedef  TYPE_3__ server_baton_t ;
struct TYPE_13__ {int /*<<< orphan*/ * conn; TYPE_3__* server; } ;
typedef  TYPE_4__ authz_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_11__ {int /*<<< orphan*/  repos; TYPE_1__* fs_path; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ svn_depth_immediates ; 
 scalar_t__ svn_depth_infinity ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC18(svn_ra_svn_conn_t *conn,
          apr_pool_t *pool,
          svn_ra_svn__list_t *params,
          void *baton)
{
  server_baton_t *b = baton;
  const char *path;
  const char *full_path;
  const char *depth_word;
  svn_depth_t depth;
  apr_hash_t *locks;
  apr_hash_index_t *hi;
  svn_error_t *err;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  FUNC1(FUNC12(params, "c?(?w)", &path, &depth_word));

  depth = depth_word ? FUNC8(depth_word) : svn_depth_infinity;
  if ((depth != svn_depth_empty) &&
      (depth != svn_depth_files) &&
      (depth != svn_depth_immediates) &&
      (depth != svn_depth_infinity))
    {
      err = FUNC9(SVN_ERR_INCORRECT_PARAMS, NULL,
                             "Invalid 'depth' specified in get-locks request");
      return FUNC7(err, b, conn, pool);
    }

  full_path = FUNC10(b->repository->fs_path->data,
                               FUNC14(path, pool), pool);

  FUNC1(FUNC16(conn, pool, b));

  FUNC1(FUNC6(b, conn, pool, "get-locks %s",
                      FUNC11(full_path, pool)));
  FUNC0(FUNC15(&locks, b->repository->repos,
                                      full_path, depth,
                                      FUNC5(b), &ab,
                                      pool));

  FUNC1(FUNC13(conn, pool, "w((!", "success"));
  for (hi = FUNC2(pool, locks); hi; hi = FUNC3(hi))
    {
      svn_lock_t *l = FUNC4(hi);

      FUNC1(FUNC17(conn, pool, l));
    }
  FUNC1(FUNC13(conn, pool, "!))"));

  return SVN_NO_ERROR;
}