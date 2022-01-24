#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* wcroot; int /*<<< orphan*/  db; int /*<<< orphan*/  dst_op_depth; } ;
typedef  TYPE_1__ update_move_baton_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_reason_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_11__ {scalar_t__ skip; TYPE_1__* umb; scalar_t__ shadowed; } ;
typedef  TYPE_2__ node_move_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_12__ {int /*<<< orphan*/  abspath; int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STMT_SELECT_DESCENDANTS_OP_DEPTH_RV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,TYPE_2__*,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char const* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_action_delete ; 
 int /*<<< orphan*/  svn_wc_conflict_action_replace ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_edited ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_update_delete ; 
 int /*<<< orphan*/ * FUNC20 (TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC21(node_move_baton_t *nmb,
                 const char *relpath,
                 svn_node_kind_t old_kind,
                 svn_node_kind_t new_kind,
                 apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  svn_sqlite__stmt_t *stmt;
  const char *local_abspath;
  svn_boolean_t is_modified, is_all_deletes;
  svn_skel_t *work_items = NULL;
  svn_skel_t *conflict = NULL;

  FUNC0(FUNC2(nmb, scratch_pool));
  if (nmb->skip)
    return SVN_NO_ERROR;

  /* Check before retracting delete to catch delete-delete
     conflicts. This catches conflicts on the node itself; deleted
     children are caught as local modifications below.*/
  if (nmb->shadowed)
    {
      FUNC0(FUNC3(nmb,
                                 old_kind, new_kind,
                                 svn_wc_conflict_action_delete,
                                 scratch_pool));
      return SVN_NO_ERROR;
    }

  local_abspath = FUNC4(b->wcroot->abspath, relpath, scratch_pool);
  FUNC0(FUNC17(&is_modified, &is_all_deletes,
                                      nmb->umb->db, local_abspath, FALSE,
                                      NULL, NULL, scratch_pool));
  if (is_modified)
    {
      svn_wc_conflict_reason_t reason;

      /* No conflict means no NODES rows at the relpath op-depth
         so it's easy to convert the modified tree into a copy.

         Note the following assumptions for relpath:
            * it is not shadowed
            * it is not the/an op-root. (or we can't make us a copy)
       */

      FUNC0(FUNC15(b->wcroot, relpath, FALSE,
                                               NULL, NULL, scratch_pool));

      reason = svn_wc_conflict_reason_edited;

      FUNC0(FUNC1(&conflict, nmb, relpath,
                                        old_kind, new_kind, reason,
                                        (new_kind == svn_node_none)
                                          ? svn_wc_conflict_action_delete
                                          : svn_wc_conflict_action_replace,
                                        NULL,
                                        scratch_pool, scratch_pool));
      nmb->skip = TRUE;
    }
  else
    {
      apr_pool_t *iterpool = FUNC7(scratch_pool);
      const char *del_abspath;
      svn_boolean_t have_row;

      /* Get all descendants of the node in reverse order (so children are
         handled before their parents, but not strictly depth first) */
      FUNC0(FUNC12(&stmt, b->wcroot->sdb,
                                        STMT_SELECT_DESCENDANTS_OP_DEPTH_RV));
      FUNC0(FUNC9(stmt, "isd", b->wcroot->wc_id, relpath,
                                b->dst_op_depth));
      FUNC0(FUNC14(&have_row, stmt));
      while (have_row)
        {
          svn_error_t *err;
          svn_skel_t *work_item;
          svn_node_kind_t del_kind;

          FUNC6(iterpool);

          del_kind = FUNC11(stmt, 1, kind_map);
          del_abspath = FUNC4(b->wcroot->abspath,
                                        FUNC10(stmt, 0, NULL),
                                        iterpool);
          if (del_kind == svn_node_dir)
            err = FUNC18(&work_item, b->db,
                                              b->wcroot->abspath, del_abspath,
                                              FALSE /* recursive */,
                                              iterpool, iterpool);
          else
            err = FUNC19(&work_item, b->db,
                                               b->wcroot->abspath, del_abspath,
                                               iterpool, iterpool);
          if (!err)
            err = FUNC16(b->wcroot, work_item, iterpool);
          if (err)
            return FUNC5(err, FUNC13(stmt));

          FUNC0(FUNC14(&have_row, stmt));
        }
      FUNC0(FUNC13(stmt));

      if (old_kind == svn_node_dir)
        FUNC0(FUNC18(&work_items, b->db,
                                            b->wcroot->abspath, local_abspath,
                                            FALSE /* recursive */,
                                            scratch_pool, iterpool));
      else
        FUNC0(FUNC19(&work_items, b->db,
                                             b->wcroot->abspath, local_abspath,
                                             scratch_pool, iterpool));

      FUNC8(iterpool);
    }

  /* Only notify if add_file/add_dir is not going to notify */
  if (conflict || (new_kind == svn_node_none))
    FUNC0(FUNC20(b->wcroot, relpath, b->db,
                                 svn_wc_notify_update_delete,
                                 new_kind,
                                 svn_wc_notify_state_inapplicable,
                                 svn_wc_notify_state_inapplicable,
                                 conflict, work_items, scratch_pool));
  else if (work_items)
    FUNC0(FUNC16(b->wcroot, work_items,
                                       scratch_pool));

  return SVN_NO_ERROR;
}