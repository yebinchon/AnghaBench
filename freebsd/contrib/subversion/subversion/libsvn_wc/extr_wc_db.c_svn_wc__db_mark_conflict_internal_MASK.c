#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_INSERT_ACTUAL_CONFLICT ; 
 int /*<<< orphan*/  STMT_SELECT_ACTUAL_NODE ; 
 int /*<<< orphan*/  STMT_UPDATE_ACTUAL_CONFLICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/  const*) ; 

svn_error_t *
FUNC12(svn_wc__db_wcroot_t *wcroot,
                                  const char *local_relpath,
                                  const svn_skel_t *conflict_skel,
                                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t got_row;
  svn_boolean_t is_complete;

  FUNC0(FUNC11(&is_complete, conflict_skel));
  FUNC1(is_complete);

  FUNC0(FUNC7(&stmt, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_NODE));
  FUNC0(FUNC6(stmt, "is", wcroot->wc_id, local_relpath));
  FUNC0(FUNC9(&got_row, stmt));
  FUNC0(FUNC8(stmt));

  if (got_row)
    {
      FUNC0(FUNC7(&stmt, wcroot->sdb,
                                        STMT_UPDATE_ACTUAL_CONFLICT));
      FUNC0(FUNC6(stmt, "is", wcroot->wc_id, local_relpath));
    }
  else
    {
      FUNC0(FUNC7(&stmt, wcroot->sdb,
                                        STMT_INSERT_ACTUAL_CONFLICT));
      FUNC0(FUNC6(stmt, "is", wcroot->wc_id, local_relpath));
      if (*local_relpath != '\0')
        FUNC0(FUNC5(stmt, 4,
                                      FUNC2(local_relpath,
                                                          scratch_pool)));
    }

  {
    svn_stringbuf_t *sb = FUNC3(conflict_skel, scratch_pool);

    FUNC0(FUNC4(stmt, 3, sb->data, sb->len));
  }

  FUNC0(FUNC10(NULL, stmt));

  return SVN_NO_ERROR;
}