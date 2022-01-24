#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_13__ {TYPE_2__* repository; } ;
typedef  TYPE_3__ server_baton_t ;
struct TYPE_14__ {int /*<<< orphan*/ * pool; int /*<<< orphan*/ * conn; } ;
typedef  TYPE_4__ file_revs_baton_t ;
struct TYPE_15__ {int /*<<< orphan*/ * conn; TYPE_3__* server; } ;
typedef  TYPE_5__ authz_baton_t ;
typedef  scalar_t__ apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_12__ {int /*<<< orphan*/  repos; TYPE_1__* fs_path; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN_RA_SVN_UNSPECIFIED_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  file_rev_handler ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_ra_svn_conn_t *conn,
              apr_pool_t *pool,
              svn_ra_svn__list_t *params,
              void *baton)
{
  server_baton_t *b = baton;
  svn_error_t *err, *write_err;
  file_revs_baton_t frb;
  svn_revnum_t start_rev, end_rev;
  const char *path;
  const char *full_path;
  apr_uint64_t include_merged_revs_param;
  svn_boolean_t include_merged_revisions;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  /* Parse arguments. */
  FUNC1(FUNC7(params, "c(?r)(?r)?B",
                                  &path, &start_rev, &end_rev,
                                  &include_merged_revs_param));
  path = FUNC10(path, pool);
  FUNC1(FUNC12(conn, pool, b));
  full_path = FUNC5(b->repository->fs_path->data, path, pool);

  if (include_merged_revs_param == SVN_RA_SVN_UNSPECIFIED_NUMBER)
    include_merged_revisions = FALSE;
  else
    include_merged_revisions = (svn_boolean_t) include_merged_revs_param;

  FUNC1(FUNC3(b, conn, pool, "%s",
                      FUNC6(full_path, start_rev, end_rev,
                                             include_merged_revisions,
                                             pool)));

  frb.conn = conn;
  frb.pool = NULL;

  err = FUNC11(b->repository->repos, full_path, start_rev,
                                 end_rev, include_merged_revisions,
                                 FUNC2(b), &ab,
                                 file_rev_handler, &frb, pool);
  write_err = FUNC9(conn, pool, "done");
  if (write_err)
    {
      FUNC4(err);
      return write_err;
    }
  FUNC0(err);
  FUNC1(FUNC8(conn, pool, ""));

  return SVN_NO_ERROR;
}