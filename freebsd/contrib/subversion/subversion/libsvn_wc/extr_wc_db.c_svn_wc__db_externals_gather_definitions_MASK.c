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
struct TYPE_4__ {int /*<<< orphan*/  abspath; int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_EXTERNAL_PROPERTIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_PROP_EXTERNALS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  depth_map ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC23(apr_hash_t **externals,
                                        apr_hash_t **depths,
                                        svn_wc__db_t *db,
                                        const char *local_abspath,
                                        apr_pool_t *result_pool,
                                        apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  svn_sqlite__stmt_t *stmt;
  const char *local_relpath;
  svn_boolean_t have_row;
  svn_error_t *err = NULL;
  apr_pool_t *iterpool = FUNC11(scratch_pool);

  FUNC1(FUNC5(local_abspath));

  FUNC0(FUNC22(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, iterpool));
  FUNC2(wcroot);

  *externals = FUNC3(result_pool);
  if (depths != NULL)
    *depths = FUNC3(result_pool);

  FUNC0(FUNC18(&stmt, wcroot->sdb,
                                    STMT_SELECT_EXTERNAL_PROPERTIES));

  FUNC0(FUNC14(stmt, "is", wcroot->wc_id, local_relpath));

  FUNC0(FUNC20(&have_row, stmt));

  while (have_row)
    {
      apr_hash_t *node_props;
      const char *external_value;

      FUNC10(iterpool);
      err = FUNC15(&node_props, stmt, 0, iterpool,
                                          iterpool);

      if (err)
        break;

      external_value = FUNC13(node_props, SVN_PROP_EXTERNALS);

      if (external_value)
        {
          const char *node_abspath;
          const char *node_relpath = FUNC16(stmt, 1, NULL);

          node_abspath = FUNC6(wcroot->abspath, node_relpath,
                                         result_pool);

          FUNC9(*externals, node_abspath,
                        FUNC4(result_pool, external_value));

          if (depths)
            {
              svn_depth_t depth
                = FUNC17(stmt, 2, depth_map,
                                                svn_depth_unknown);

              FUNC9(*depths, node_abspath,
                            /* Use static string */
                            FUNC21(depth_map, depth));
            }
        }

      FUNC0(FUNC20(&have_row, stmt));
    }

  FUNC12(iterpool);

  return FUNC8(FUNC7(err,
                                                  FUNC19(stmt)));
}