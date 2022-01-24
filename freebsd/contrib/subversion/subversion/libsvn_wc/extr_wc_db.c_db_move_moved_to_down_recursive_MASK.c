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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_SELECT_MOVED_DESCENDANTS_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int,char const*,int,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_wc__db_wcroot_t *wcroot,
                                const char *local_relpath,
                                int new_shadow_layer,
                                apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_pool_t *iterpool = FUNC5(scratch_pool);

  FUNC0(FUNC9(&stmt, wcroot->sdb,
                        STMT_SELECT_MOVED_DESCENDANTS_SRC));
  FUNC0(FUNC6(stmt, "isd", wcroot->wc_id, local_relpath,
                            new_shadow_layer));
  FUNC0(FUNC11(&have_row, stmt));

  while (have_row)
    {
      int del_op_depth;
      const char *src_relpath;
      const char *dst_relpath;
      svn_error_t *err;

      FUNC4(iterpool);

      del_op_depth = FUNC7(stmt, 0);
      src_relpath = FUNC8(stmt, 1, iterpool);
      dst_relpath = FUNC8(stmt, 4, iterpool);

      err = FUNC3(
               FUNC1(
                             wcroot,
                             src_relpath, del_op_depth,
                             src_relpath, new_shadow_layer,
                             dst_relpath, iterpool));

      if (err)
        return FUNC2(err, FUNC10(stmt));

      FUNC0(FUNC11(&have_row, stmt));
    }

  FUNC0(FUNC10(stmt));

  return SVN_NO_ERROR;
}