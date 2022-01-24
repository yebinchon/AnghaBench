#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  sdb; int /*<<< orphan*/  wc_id; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  void* svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  STMT_COPY_NODE_MOVE ; 
 int /*<<< orphan*/  STMT_DELETE_NODE ; 
 int /*<<< orphan*/  STMT_REPLACE_WITH_BASE_DELETED ; 
 int /*<<< orphan*/  STMT_SELECT_LAYER_FOR_REPLACE ; 
 int /*<<< orphan*/  STMT_SELECT_NO_LONGER_MOVED_RV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_WC_NOT_LOCKED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,char const*,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 char* FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 void* FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 int /*<<< orphan*/ * FUNC23 (int*,TYPE_1__*,char const*,int,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC24(svn_wc__db_wcroot_t *wcroot,
                                  const char *src_op_relpath,
                                  int src_op_depth,
                                  const char *dst_op_relpath,
                                  svn_skel_t *conflict,
                                  svn_skel_t *work_items,
                                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt, *stmt2;
  svn_boolean_t have_row;
  apr_pool_t *iterpool = FUNC11(scratch_pool);
  int dst_op_depth = FUNC7(dst_op_relpath);
  svn_boolean_t locked;
  svn_error_t *err = NULL;

  FUNC0(FUNC23(&locked, wcroot, dst_op_relpath,
                                               FALSE, scratch_pool));

  if (!locked)
    return FUNC9(SVN_ERR_WC_NOT_LOCKED, NULL,
                             FUNC1("No write-lock in '%s'"),
                             FUNC6(wcroot, dst_op_relpath,
                                                    scratch_pool));

  FUNC0(FUNC18(&stmt2, wcroot->sdb,
                                    STMT_COPY_NODE_MOVE));

  /* Replace entire subtree at one op-depth. */
  FUNC0(FUNC18(&stmt, wcroot->sdb,
                                    STMT_SELECT_LAYER_FOR_REPLACE));
  FUNC0(FUNC14(stmt, "isdsd", wcroot->wc_id,
                            src_op_relpath, src_op_depth,
                            dst_op_relpath, dst_op_depth));
  FUNC0(FUNC20(&have_row, stmt));
  while (have_row)
    {
      const char *src_relpath;
      const char *dst_relpath;

      FUNC10(iterpool);

      src_relpath = FUNC16(stmt, 0, iterpool);
      dst_relpath = FUNC16(stmt, 2, iterpool);

      err = FUNC14(stmt2, "isdsds", wcroot->wc_id,
                              src_relpath, src_op_depth,
                              dst_relpath, dst_op_depth,
                              FUNC13(dst_relpath, iterpool));
      if (!err)
        err = FUNC21(stmt2);

      /* stmt2 is reset (never modified or by step_done) */

      if (err)
        break;

      /* The node can't be deleted where it is added, so extension of
         an existing shadowing is only interesting 2 levels deep. */
      if (FUNC7(dst_relpath) > (dst_op_depth+1))
        {
          svn_boolean_t exists = !FUNC15(stmt, 3);

          if (exists)
            {
              svn_wc__db_status_t presence;

              presence = FUNC17(stmt, 3, presence_map);

              if (presence != svn_wc__db_status_normal)
                exists = FALSE;
            }

          if (!exists)
            {
              svn_node_kind_t kind = FUNC17(stmt, 1, kind_map);

              err = FUNC4(wcroot, dst_relpath,
                                            kind, dst_op_depth, iterpool);

              if (err)
                break;
            }
        }

      FUNC0(FUNC20(&have_row, stmt));
    }

  FUNC0(FUNC8(err, FUNC19(stmt)));

  /* And now remove the records that are no longer needed */
  FUNC0(FUNC18(&stmt, wcroot->sdb,
                                    STMT_SELECT_NO_LONGER_MOVED_RV));
  FUNC0(FUNC14(stmt, "isdsd", wcroot->wc_id,
                            dst_op_relpath, dst_op_depth,
                            src_op_relpath, src_op_depth));
  FUNC0(FUNC20(&have_row, stmt));
  while (have_row)
    {
      const char *dst_relpath;
      svn_wc__db_status_t shadowed_presence;

      FUNC10(iterpool);

      dst_relpath = FUNC16(stmt, 0, iterpool);

      if (!FUNC15(stmt, 2))
        shadowed_presence = FUNC17(stmt, 2, presence_map);
      else
        shadowed_presence = svn_wc__db_status_not_present;

      if (shadowed_presence != svn_wc__db_status_normal
          && shadowed_presence != svn_wc__db_status_incomplete)
        {
          err = FUNC18(&stmt2, wcroot->sdb,
                                            STMT_DELETE_NODE);
        }
      else
        {
          err =FUNC18(&stmt2, wcroot->sdb,
                                         STMT_REPLACE_WITH_BASE_DELETED);
        }

      if (!err)
        err = FUNC14(stmt2, "isd", wcroot->wc_id, dst_relpath,
                                             dst_op_depth);

      if (!err)
        err = FUNC21(stmt2);

      /* stmt2 is reset (never modified or by step_done) */
      if (err)
        break;

      /* Delete ACTUAL information about this node that we just deleted */
      err = FUNC3(wcroot, dst_relpath, dst_op_depth,
                                   scratch_pool);

      if (err)
        break;

      /* Retract base-delete for the node itself */
      err = FUNC5(wcroot, dst_relpath, dst_op_depth,
                                     scratch_pool);

      if (err)
        break;

      FUNC0(FUNC20(&have_row, stmt));
    }
  FUNC12(iterpool);

  FUNC0(FUNC8(err, FUNC19(stmt)));

  FUNC0(FUNC2(wcroot->sdb, work_items, scratch_pool));

  if (conflict)
    FUNC0(FUNC22(wcroot, dst_op_relpath /* ## */,
                                              conflict, scratch_pool));

  return SVN_NO_ERROR;
}