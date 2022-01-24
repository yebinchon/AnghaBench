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
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_BASE_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_REPOS_PATH_REVISION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC17(svn_wc__db_wcroot_t *wcroot,
                  const char *local_relpath,
                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_revnum_t revision;
  const char *repos_relpath;
  apr_pool_t *iterpool = FUNC7(scratch_pool);

  FUNC0(FUNC14(&stmt, wcroot->sdb,
                                    STMT_SELECT_BASE_NODE));
  FUNC0(FUNC11(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC16(&have_row, stmt));
  if (!have_row)
    return FUNC5(FUNC15(stmt));

  revision = FUNC12(stmt, 4);
  repos_relpath = FUNC13(stmt, 1, scratch_pool);

  FUNC0(FUNC15(stmt));

  FUNC0(FUNC14(&stmt, wcroot->sdb,
                                    STMT_SELECT_REPOS_PATH_REVISION));
  FUNC0(FUNC11(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC16(&have_row, stmt));
  while (have_row)
    {
      svn_revnum_t node_revision = FUNC12(stmt, 2);
      const char *child_relpath = FUNC13(stmt, 0, NULL);
      const char *relpath;

      FUNC6(iterpool);

      relpath = FUNC10(local_relpath, child_relpath);
      relpath = FUNC9(repos_relpath, relpath, iterpool);

      if (FUNC3(relpath, FUNC13(stmt, 1, NULL)))
        return FUNC4(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE,
                                 FUNC15(stmt),
                                 FUNC1("Cannot apply update because '%s' is a "
                                   "switched path (please switch it back to "
                                   "its original URL and try again)"),
                                 FUNC2(wcroot, child_relpath,
                                                        scratch_pool));

      if (revision != node_revision)
        return FUNC4(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE,
                                 FUNC15(stmt),
                                 FUNC1("Cannot apply update because '%s' is a "
                                   "mixed-revision working copy (please "
                                   "update and try again)"),
                                 FUNC2(wcroot, local_relpath,
                                                        scratch_pool));

      FUNC0(FUNC16(&have_row, stmt));
    }
  FUNC0(FUNC15(stmt));

  FUNC8(iterpool);

  return SVN_NO_ERROR;
}