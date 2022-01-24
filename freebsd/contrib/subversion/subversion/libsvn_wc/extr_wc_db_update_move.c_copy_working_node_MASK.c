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
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_INSERT_ACTUAL_NODE ; 
 int /*<<< orphan*/  STMT_INSERT_WORKING_NODE_COPY_FROM ; 
 int /*<<< orphan*/  STMT_SELECT_ACTUAL_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc__db_status_normal ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char *src_relpath,
                  const char *dst_relpath,
                  svn_wc__db_wcroot_t *wcroot,
                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  const char *dst_parent_relpath = FUNC2(dst_relpath,
                                                       scratch_pool);

  /* Add a WORKING row for the new node, based on the source. */
  FUNC0(FUNC5(&stmt,wcroot->sdb,
                                    STMT_INSERT_WORKING_NODE_COPY_FROM));
  FUNC0(FUNC3(stmt, "issdst", wcroot->wc_id, src_relpath,
                            dst_relpath, FUNC1(dst_relpath),
                            dst_parent_relpath, presence_map,
                            svn_wc__db_status_normal));
  FUNC0(FUNC8(stmt));

  /* Copy properties over.  ### This loses changelist association. */
  FUNC0(FUNC5(&stmt, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_NODE));
  FUNC0(FUNC3(stmt, "is", wcroot->wc_id, src_relpath));
  FUNC0(FUNC7(&have_row, stmt));
  if (have_row)
    {
      apr_size_t props_size;
      const char *properties;

      properties = FUNC4(stmt, 1, &props_size,
                                           scratch_pool);
      FUNC0(FUNC6(stmt));
      FUNC0(FUNC5(&stmt, wcroot->sdb,
                                        STMT_INSERT_ACTUAL_NODE));
      FUNC0(FUNC3(stmt, "issbs",
                                wcroot->wc_id, dst_relpath,
                                FUNC2(dst_relpath,
                                                    scratch_pool),
                                properties, props_size, NULL));
      FUNC0(FUNC7(&have_row, stmt));
    }
  FUNC0(FUNC6(stmt));

  return SVN_NO_ERROR;
}