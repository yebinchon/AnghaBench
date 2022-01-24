#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_MOVED_FROM_FOR_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(const char **moved_from_relpath,
                   int *moved_from_op_depth,
                   svn_wc__db_wcroot_t *wcroot,
                   const char *root_relpath,
                   const char *local_relpath,
                   int op_depth,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  const char *suffix = "";
  svn_sqlite__stmt_t *stmt;
  const char *m_from_relpath;
  int m_from_op_depth;
  int m_move_from_depth;
  svn_boolean_t have_row;

  while (FUNC1(local_relpath) > op_depth)
    {
      const char *name;
      FUNC5(&local_relpath, &name, local_relpath, scratch_pool);
      suffix = FUNC3(suffix, name, scratch_pool);
    }

  FUNC0(FUNC9(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_FROM_FOR_DELETE));
  FUNC0(FUNC6(stmt, "is",
                            wcroot->wc_id, local_relpath));
  FUNC0(FUNC11(&have_row, stmt));

  if (!have_row)
    {
      /* assert(have_row); */
      *moved_from_relpath = NULL;
      *moved_from_op_depth = -1;

      FUNC0(FUNC10(stmt));

      return SVN_NO_ERROR;
    }

  m_from_relpath = FUNC8(stmt, 0, scratch_pool);
  m_from_op_depth = FUNC7(stmt, 1);
  m_move_from_depth = FUNC7(stmt, 2);

  FUNC0(FUNC10(stmt));

  if (! FUNC4(root_relpath, m_from_relpath))
    {
      *moved_from_relpath = FUNC3(m_from_relpath, suffix,
                                             result_pool);
      *moved_from_op_depth = m_from_op_depth; /* ### Ok? */
      return SVN_NO_ERROR;
    }
  else if (!m_move_from_depth)
    {
      *moved_from_relpath = NULL;
      *moved_from_op_depth = -1;
      return SVN_NO_ERROR;
    }

  return FUNC2(
        FUNC12(moved_from_relpath,
                           moved_from_op_depth,
                           wcroot,
                           root_relpath,
                           FUNC3(m_from_relpath, suffix,
                                            scratch_pool),
                           m_move_from_depth,
                           result_pool, scratch_pool));
}