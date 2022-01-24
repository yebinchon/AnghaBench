#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {TYPE_2__* repository; } ;
typedef  TYPE_3__ server_baton_t ;
struct TYPE_12__ {int /*<<< orphan*/ * conn; TYPE_3__* server; } ;
typedef  TYPE_4__ authz_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  repos; int /*<<< orphan*/  fs; TYPE_1__* fs_path; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_REVISION ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  gls_receiver ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char const**,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 char* FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char const*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static svn_error_t *
FUNC17(svn_ra_svn_conn_t *conn,
                      apr_pool_t *pool,
                      svn_ra_svn__list_t *params,
                      void *baton)
{
  svn_error_t *err, *write_err;
  server_baton_t *b = baton;
  svn_revnum_t peg_revision, start_rev, end_rev;
  const char *relative_path;
  const char *abs_path;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  /* Parse the arguments. */
  FUNC1(FUNC11(params, "c(?r)(?r)(?r)",
                                  &relative_path, &peg_revision,
                                  &start_rev, &end_rev));
  relative_path = FUNC14(relative_path, pool);

  abs_path = FUNC9(b->repository->fs_path->data, relative_path,
                              pool);

  FUNC1(FUNC16(conn, pool, b));
  FUNC1(FUNC4(baton, conn, pool, "%s",
                      FUNC10(abs_path, peg_revision,
                                                     start_rev, end_rev,
                                                     pool)));

  /* No START_REV or PEG_REVISION?  We'll use HEAD. */
  if (!FUNC2(start_rev) || !FUNC2(peg_revision))
    {
      svn_revnum_t youngest;

      err = FUNC8(&youngest, b->repository->fs, pool);

      if (err)
        {
          err = FUNC6(
                    FUNC13(conn, pool, "done"),
                    err);

          return FUNC5(err, b, conn, pool);
        }

      if (!FUNC2(start_rev))
        start_rev = youngest;
      if (!FUNC2(peg_revision))
        peg_revision = youngest;
    }

  /* No END_REV?  We'll use 0. */
  if (!FUNC2(end_rev))
    end_rev = 0;

  if (end_rev > start_rev)
    {
      err = FUNC13(conn, pool, "done");
      err = FUNC7(SVN_ERR_FS_NO_SUCH_REVISION, err,
                              "Get-location-segments end revision must not be "
                              "younger than start revision");
      return FUNC5(err, b, conn, pool);
    }

  if (start_rev > peg_revision)
    {
      err = FUNC13(conn, pool, "done");
      err = FUNC7(SVN_ERR_FS_NO_SUCH_REVISION, err,
                              "Get-location-segments start revision must not "
                              "be younger than peg revision");
      return FUNC5(err, b, conn, pool);
    }

  /* All the parameters are fine - let's perform the query against the
   * repository. */

  /* We store both err and write_err here, so the client will get
   * the "done" even if there was an error in fetching the results. */

  err = FUNC15(b->repository->repos, abs_path,
                                         peg_revision, start_rev, end_rev,
                                         gls_receiver, (void *)conn,
                                         FUNC3(b), &ab,
                                         pool);
  write_err = FUNC13(conn, pool, "done");
  if (write_err)
    {
      return FUNC6(write_err, err);
    }
  FUNC0(err);

  FUNC1(FUNC12(conn, pool, ""));

  return SVN_NO_ERROR;
}