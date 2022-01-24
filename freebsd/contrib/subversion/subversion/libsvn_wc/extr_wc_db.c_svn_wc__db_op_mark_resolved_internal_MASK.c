#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_DELETE_ACTUAL_EMPTY ; 
 int /*<<< orphan*/  STMT_SELECT_ACTUAL_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  STMT_UPDATE_ACTUAL_CONFLICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC16(svn_wc__db_wcroot_t *wcroot,
                                     const char *local_relpath,
                                     svn_wc__db_t *db,
                                     svn_boolean_t resolved_text,
                                     svn_boolean_t resolved_props,
                                     svn_boolean_t resolved_tree,
                                     const svn_skel_t *work_items,
                                     apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int total_affected_rows = 0;
  svn_boolean_t resolved_all;
  apr_size_t conflict_len;
  const void *conflict_data;
  svn_skel_t *conflicts;

  /* Check if we have a conflict in ACTUAL */
  FUNC0(FUNC10(&stmt, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_NODE));
  FUNC0(FUNC8(stmt, "is", wcroot->wc_id, local_relpath));

  FUNC0(FUNC12(&have_row, stmt));

  if (! have_row)
    {
      FUNC0(FUNC11(stmt));

      FUNC0(FUNC10(&stmt, wcroot->sdb,
                                        STMT_SELECT_NODE_INFO));

      FUNC0(FUNC8(stmt, "is", wcroot->wc_id, local_relpath));

      FUNC0(FUNC12(&have_row, stmt));
      FUNC0(FUNC11(stmt));

      if (have_row)
        return SVN_NO_ERROR;

      return FUNC4(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                               FUNC1("The node '%s' was not found."),
                                   FUNC3(wcroot,
                                                          local_relpath,
                                                          scratch_pool));
    }

  conflict_data = FUNC9(stmt, 2, &conflict_len,
                                          scratch_pool);
  FUNC0(FUNC11(stmt));
  FUNC0(FUNC2(wcroot->sdb, work_items, scratch_pool));

  if (!conflict_data)
    return SVN_NO_ERROR;

  conflicts = FUNC5(conflict_data, conflict_len, scratch_pool);
  

  FUNC0(FUNC15(&resolved_all, conflicts,
                                        db, wcroot->abspath,
                                        resolved_text,
                                        resolved_props ? "" : NULL,
                                        resolved_tree,
                                        scratch_pool, scratch_pool));

  FUNC0(FUNC10(&stmt, wcroot->sdb,
                                    STMT_UPDATE_ACTUAL_CONFLICT));
  FUNC0(FUNC8(stmt, "is", wcroot->wc_id, local_relpath));

  if (! resolved_all)
    {
      svn_stringbuf_t *sb = FUNC6(conflicts, scratch_pool);

      FUNC0(FUNC7(stmt, 3, sb->data, sb->len));
    }

  FUNC0(FUNC14(&total_affected_rows, stmt));

  /* Now, remove the actual node if it doesn't have any more useful
     information.  We only need to do this if we've remove data ourselves. */
  if (total_affected_rows > 0)
    {
      FUNC0(FUNC10(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_EMPTY));
      FUNC0(FUNC8(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC13(stmt));
    }

  return SVN_NO_ERROR;
}