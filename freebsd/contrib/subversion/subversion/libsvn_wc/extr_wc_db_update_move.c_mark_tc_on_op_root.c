
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int db; int wcroot; int dst_op_depth; } ;
typedef TYPE_2__ update_move_baton_t ;
typedef int svn_wc_conflict_action_t ;
typedef int svn_skel_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int * dst_relpath; int skip; TYPE_1__* pb; scalar_t__ shadowed; TYPE_2__* umb; } ;
typedef TYPE_3__ node_move_baton_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int shadowed; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int create_node_tree_conflict (int **,TYPE_3__*,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int svn_node_none ;
 int svn_wc__db_scan_moved_to_internal (int *,char const**,int *,int ,int *,int ,int *,int *) ;
 int svn_wc_conflict_reason_deleted ;
 int svn_wc_conflict_reason_moved_away ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_tree_conflict ;
 int update_move_list_add (int ,int *,int ,int ,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
mark_tc_on_op_root(node_move_baton_t *nmb,
                   svn_node_kind_t old_kind,
                   svn_node_kind_t new_kind,
                   svn_wc_conflict_action_t action,
                   apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  const char *move_dst_relpath;
  svn_skel_t *conflict;

  SVN_ERR_ASSERT(nmb->shadowed && !nmb->pb->shadowed);

  nmb->skip = TRUE;

  if (old_kind == svn_node_none)
    move_dst_relpath = ((void*)0);
  else
    SVN_ERR(svn_wc__db_scan_moved_to_internal(((void*)0), &move_dst_relpath, ((void*)0),
                                              b->wcroot, nmb->dst_relpath,
                                              b->dst_op_depth,
                                              scratch_pool, scratch_pool));

  SVN_ERR(create_node_tree_conflict(&conflict, nmb, nmb->dst_relpath,
                                    old_kind, new_kind,
                                    (move_dst_relpath
                                     ? svn_wc_conflict_reason_moved_away
                                     : svn_wc_conflict_reason_deleted),
                                    action, move_dst_relpath
                                              ? nmb->dst_relpath
                                              : ((void*)0),
                                    scratch_pool, scratch_pool));

  SVN_ERR(update_move_list_add(b->wcroot, nmb->dst_relpath, b->db,
                               svn_wc_notify_tree_conflict,
                               new_kind,
                               svn_wc_notify_state_inapplicable,
                               svn_wc_notify_state_inapplicable,
                               conflict, ((void*)0), scratch_pool));

  return SVN_NO_ERROR;
}
