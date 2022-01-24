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
struct TYPE_10__ {TYPE_3__* wcroot; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ update_move_baton_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_reason_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_11__ {scalar_t__ skip; TYPE_1__* umb; scalar_t__ shadowed; } ;
typedef  TYPE_2__ node_move_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_12__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; int /*<<< orphan*/  abspath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STMT_INSERT_DELETE_FROM_NODE_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_none ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_action_delete ; 
 int /*<<< orphan*/  svn_wc_conflict_action_replace ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_edited ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_update_delete ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(node_move_baton_t *nmb,
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

  local_abspath = FUNC5(b->wcroot->abspath, relpath, scratch_pool);
  FUNC0(FUNC11(&is_modified, &is_all_deletes,
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

      FUNC0(FUNC9(b->wcroot, relpath, FALSE,
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
      /* Delete the WORKING node at DST_RELPATH. */
      FUNC0(FUNC7(&stmt, b->wcroot->sdb,
                                 STMT_INSERT_DELETE_FROM_NODE_RECURSIVE));
      FUNC0(FUNC6(stmt, "isdd",
                                b->wcroot->wc_id, relpath,
                                0, FUNC4(relpath)));
      FUNC0(FUNC8(stmt));
    }

  /* Only notify if add_file/add_dir is not going to notify */
  if (conflict || (new_kind == svn_node_none))
    FUNC0(FUNC12(b->wcroot, relpath, b->db,
                                 svn_wc_notify_update_delete,
                                 new_kind,
                                 svn_wc_notify_state_inapplicable,
                                 svn_wc_notify_state_inapplicable,
                                 conflict, work_items, scratch_pool));
  else if (work_items)
    FUNC0(FUNC10(b->wcroot, work_items,
                                       scratch_pool));

  return SVN_NO_ERROR;
}