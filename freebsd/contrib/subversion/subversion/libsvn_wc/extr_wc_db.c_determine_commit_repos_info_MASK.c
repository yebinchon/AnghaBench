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
struct TYPE_4__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_base_deleted ; 

__attribute__((used)) static svn_error_t *
FUNC18(apr_int64_t *repos_id,
                            const char **repos_relpath,
                            svn_wc__db_wcroot_t *wcroot,
                            const char *local_relpath,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int op_depth;

  /* Prefer the current node's repository information.  */
  FUNC0(FUNC14(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  FUNC0(FUNC8(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC16(&have_row, stmt));

  if (!have_row)
    return FUNC4(SVN_ERR_WC_PATH_NOT_FOUND,
                             FUNC15(stmt),
                             FUNC2("The node '%s' was not found."),
                             FUNC3(wcroot, local_relpath,
                                                    scratch_pool));

  op_depth = FUNC9(stmt, 0);

  if (op_depth > 0)
    {
      svn_wc__db_status_t presence = FUNC13(stmt, 3,
                                                              presence_map);

      if (presence == svn_wc__db_status_base_deleted)
        {
          FUNC0(FUNC17(stmt)); /* There must be a row */
          op_depth = FUNC9(stmt, 0);
        }
      else
        {
          const char *parent_repos_relpath;
          const char *parent_relpath;
          const char *name;

          FUNC0(FUNC15(stmt));

          /* The repository relative path of an add/copy is based on its
             ancestor, not on the shadowed base layer.

             As this function is only used from the commit processing we know
             the parent directory has only a BASE row, so we can just obtain
             the information directly by recursing (once!)  */

          FUNC7(&parent_relpath, &name, local_relpath,
                            scratch_pool);

          FUNC0(FUNC18(repos_id, &parent_repos_relpath,
                                              wcroot, parent_relpath,
                                              scratch_pool, scratch_pool));

          *repos_relpath = FUNC6(parent_repos_relpath, name,
                                            result_pool);
          return SVN_NO_ERROR;
        }
    }


  FUNC1(op_depth == 0); /* And that row must be BASE */

  FUNC1(!FUNC11(stmt, 1));
  FUNC1(!FUNC11(stmt, 2));

  *repos_id = FUNC10(stmt, 1);
  *repos_relpath = FUNC12(stmt, 2, result_pool);

  return FUNC5(FUNC15(stmt));
}