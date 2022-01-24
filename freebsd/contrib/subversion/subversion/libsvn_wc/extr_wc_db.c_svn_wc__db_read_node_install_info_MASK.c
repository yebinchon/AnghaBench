#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* abspath; int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC21(const char **wcroot_abspath,
                                  const svn_checksum_t **sha1_checksum,
                                  apr_hash_t **pristine_props,
                                  apr_time_t *changed_date,
                                  svn_wc__db_t *db,
                                  const char *local_abspath,
                                  const char *wri_abspath,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_error_t *err = NULL;
  svn_boolean_t have_row;

  FUNC1(FUNC7(local_abspath));

  if (!wri_abspath)
    wri_abspath = local_abspath;

  FUNC0(FUNC20(&wcroot, &local_relpath, db,
                              wri_abspath, scratch_pool, scratch_pool));
  FUNC2(wcroot);

  if (local_abspath != wri_abspath
      && FUNC6(local_abspath, wri_abspath))
    {
      if (!FUNC8(wcroot->abspath, local_abspath))
        return FUNC12(
                    SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                    FUNC3("The node '%s' is not in working copy '%s'"),
                    FUNC9(local_abspath, scratch_pool),
                    FUNC9(wcroot->abspath, scratch_pool));

      local_relpath = FUNC10(wcroot->abspath, local_abspath);
    }

  if (wcroot_abspath != NULL)
    *wcroot_abspath = FUNC5(result_pool, wcroot->abspath);

  FUNC0(FUNC17(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));

  FUNC0(FUNC13(stmt, "is", wcroot->wc_id, local_relpath));

  FUNC0(FUNC19(&have_row, stmt));

  if (have_row)
    {
      if (sha1_checksum)
        err = FUNC14(sha1_checksum, stmt, 6, result_pool);

      if (!err && pristine_props)
        {
          err = FUNC16(pristine_props, stmt, 14,
                                              result_pool, scratch_pool);
          /* Null means no props (assuming presence normal or incomplete). */
          if (*pristine_props == NULL)
            *pristine_props = FUNC4(result_pool);
        }

      if (changed_date)
        *changed_date = FUNC15(stmt, 9);
    }
  else
    return FUNC12(SVN_ERR_WC_PATH_NOT_FOUND,
                             FUNC18(stmt),
                             FUNC3("The node '%s' is not installable"),
                             FUNC9(local_abspath,
                                                    scratch_pool));

  FUNC0(FUNC11(err, FUNC18(stmt)));

  return SVN_NO_ERROR;
}