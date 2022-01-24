#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  abspath; int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  void* svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  void* svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_EXTERNAL_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  presence_map ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 char* FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 void* FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char const**,char const**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC23(svn_wc__db_status_t *status,
                         svn_node_kind_t *kind,
                         const char **definining_abspath,
                         const char **repos_root_url,
                         const char **repos_uuid,
                         const char **recorded_repos_relpath,
                         svn_revnum_t *recorded_peg_revision,
                         svn_revnum_t *recorded_revision,
                         svn_wc__db_t *db,
                         const char *local_abspath,
                         const char *wri_abspath,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_info;
  svn_error_t *err = NULL;
  FUNC1(FUNC5(local_abspath));

  if (! wri_abspath)
    wri_abspath = FUNC4(local_abspath, scratch_pool);

  FUNC0(FUNC22(&wcroot, &local_relpath, db,
                              wri_abspath, scratch_pool, scratch_pool));
  FUNC2(wcroot);

  FUNC1(FUNC6(wcroot->abspath, local_abspath));

  local_relpath = FUNC9(wcroot->abspath, local_abspath);

  FUNC0(FUNC18(&stmt, wcroot->sdb,
                                    STMT_SELECT_EXTERNAL_INFO));
  FUNC0(FUNC13(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC20(&have_info, stmt));

  if (have_info)
    {
      if (status)
        *status = FUNC17(stmt, 0, presence_map);

      if (kind)
        *kind = FUNC17(stmt, 1, kind_map);

      if (definining_abspath)
        {
          const char *record_relpath = FUNC16(stmt, 2, NULL);

          *definining_abspath = FUNC7(wcroot->abspath,
                                                record_relpath, result_pool);
        }

      if (repos_root_url || repos_uuid)
        {
          apr_int64_t repos_id;

          repos_id = FUNC14(stmt, 3);

          err = FUNC10(
                        err,
                        FUNC21(repos_root_url, repos_uuid,
                                                    wcroot, repos_id,
                                                    result_pool));
        }

      if (recorded_repos_relpath)
        *recorded_repos_relpath = FUNC16(stmt, 4,
                                                          result_pool);

      if (recorded_peg_revision)
        *recorded_peg_revision = FUNC15(stmt, 5);

      if (recorded_revision)
        *recorded_revision = FUNC15(stmt, 6);
    }
  else
    {
      err = FUNC11(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                              FUNC3("The node '%s' is not an external."),
                              FUNC8(local_abspath,
                                                     scratch_pool));
    }

  return FUNC12(
                FUNC10(err, FUNC19(stmt)));
}