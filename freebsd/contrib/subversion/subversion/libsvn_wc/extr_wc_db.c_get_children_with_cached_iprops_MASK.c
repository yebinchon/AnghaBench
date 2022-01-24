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
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_IPROPS_CHILDREN ; 
 int /*<<< orphan*/  STMT_SELECT_IPROPS_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_IPROPS_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_immediates ; 
 char* FUNC5 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,char*) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC17(apr_hash_t **iprop_paths,
                                svn_wc__db_wcroot_t *wcroot,
                                const char *local_relpath,
                                svn_depth_t depth,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  *iprop_paths = FUNC2(result_pool);

  /* First check if LOCAL_RELPATH itself has iprops */
  FUNC0(FUNC13(&stmt, wcroot->sdb,
                                    STMT_SELECT_IPROPS_NODE));
  FUNC0(FUNC11(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC15(&have_row, stmt));

  if (have_row)
   {
      const char *relpath_with_cache = FUNC12(stmt, 0,
                                                               NULL);
      const char *abspath_with_cache = FUNC6(wcroot->abspath,
                                                       relpath_with_cache,
                                                       result_pool);
      FUNC7(*iprop_paths, abspath_with_cache,
                    FUNC12(stmt, 1, result_pool));
    }
  FUNC0(FUNC14(stmt));

  if (depth == svn_depth_empty)
    return SVN_NO_ERROR;

  /* Now fetch information for children or all descendants */
  if (depth == svn_depth_files
      || depth == svn_depth_immediates)
    {
      FUNC0(FUNC13(&stmt, wcroot->sdb,
                                        STMT_SELECT_IPROPS_CHILDREN));
    }
  else /* Default to svn_depth_infinity. */
    {
      FUNC0(FUNC13(&stmt, wcroot->sdb,
                                        STMT_SELECT_IPROPS_RECURSIVE));
    }

  FUNC0(FUNC11(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC15(&have_row, stmt));

  while (have_row)
    {
      const char *relpath_with_cache = FUNC12(stmt, 0,
                                                               NULL);
      const char *abspath_with_cache = FUNC6(wcroot->abspath,
                                                       relpath_with_cache,
                                                       result_pool);
      FUNC7(*iprop_paths, abspath_with_cache,
                    FUNC12(stmt, 1, result_pool));
      FUNC0(FUNC15(&have_row, stmt));
    }

  FUNC0(FUNC14(stmt));

  /* For depth files we should filter non files */
  if (depth == svn_depth_files)
    {
      apr_hash_index_t *hi;
      apr_pool_t *iterpool = FUNC9(scratch_pool);

      for (hi = FUNC1(scratch_pool, *iprop_paths);
           hi;
           hi = FUNC3(hi))
        {
          const char *child_abspath = FUNC4(hi);
          const char *child_relpath;
          svn_node_kind_t child_kind;

          FUNC8(iterpool);

          child_relpath = FUNC5(local_relpath, child_abspath,
                                              NULL);

          if (! child_relpath)
            {
              continue; /* local_relpath itself */
            }

          FUNC0(FUNC16(NULL, &child_kind, NULL,
                                                    NULL, NULL, NULL, NULL,
                                                    NULL, NULL, NULL, NULL,
                                                    NULL, NULL, NULL, NULL,
                                                    wcroot, child_relpath,
                                                    scratch_pool,
                                                    scratch_pool));

          /* Filter if not a file */
          if (child_kind != svn_node_file)
            {
              FUNC7(*iprop_paths, child_abspath, NULL);
            }
        }

      FUNC10(iterpool);
    }

  return SVN_NO_ERROR;
}