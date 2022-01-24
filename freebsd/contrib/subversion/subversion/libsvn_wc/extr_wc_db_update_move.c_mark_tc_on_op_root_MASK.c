#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  db; int /*<<< orphan*/  wcroot; int /*<<< orphan*/  dst_op_depth; } ;
typedef  TYPE_2__ update_move_baton_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_action_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/ * dst_relpath; int /*<<< orphan*/  skip; TYPE_1__* pb; scalar_t__ shadowed; TYPE_2__* umb; } ;
typedef  TYPE_3__ node_move_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  shadowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_none ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_deleted ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_moved_away ; 
 int /*<<< orphan*/  svn_wc_notify_state_inapplicable ; 
 int /*<<< orphan*/  svn_wc_notify_tree_conflict ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(node_move_baton_t *nmb,
                   svn_node_kind_t old_kind,
                   svn_node_kind_t new_kind,
                   svn_wc_conflict_action_t action,
                   apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  const char *move_dst_relpath;
  svn_skel_t *conflict;

  FUNC1(nmb->shadowed && !nmb->pb->shadowed);

  nmb->skip = TRUE;

  if (old_kind == svn_node_none)
    move_dst_relpath = NULL;
  else
    FUNC0(FUNC3(NULL, &move_dst_relpath, NULL,
                                              b->wcroot, nmb->dst_relpath,
                                              b->dst_op_depth,
                                              scratch_pool, scratch_pool));

  FUNC0(FUNC2(&conflict, nmb, nmb->dst_relpath,
                                    old_kind, new_kind,
                                    (move_dst_relpath
                                     ? svn_wc_conflict_reason_moved_away
                                     : svn_wc_conflict_reason_deleted),
                                    action, move_dst_relpath
                                              ? nmb->dst_relpath
                                              : NULL,
                                    scratch_pool, scratch_pool));

  FUNC0(FUNC4(b->wcroot, nmb->dst_relpath, b->db,
                               svn_wc_notify_tree_conflict,
                               new_kind,
                               svn_wc_notify_state_inapplicable,
                               svn_wc_notify_state_inapplicable,
                               conflict, NULL, scratch_pool));

  return SVN_NO_ERROR;
}