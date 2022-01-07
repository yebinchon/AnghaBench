
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* umb; int src_relpath; int dst_relpath; scalar_t__ shadowed; struct TYPE_6__* pb; void* skip; void* edited; } ;
typedef TYPE_2__ node_move_baton_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int src_op_depth; int wcroot; int dst_op_depth; } ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int * mark_tc_on_op_root (TYPE_2__*,int ,int ,int ,int *) ;
 int * svn_wc__db_depth_get_info (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,int ,int ,int *,int *) ;
 int svn_wc_conflict_action_edit ;

__attribute__((used)) static svn_error_t *
mark_node_edited(node_move_baton_t *nmb,
                 apr_pool_t *scratch_pool)
{
  if (nmb->edited)
    return SVN_NO_ERROR;

  if (nmb->pb)
    {
      SVN_ERR(mark_node_edited(nmb->pb, scratch_pool));

      if (nmb->pb->skip)
        nmb->skip = TRUE;
    }

  nmb->edited = TRUE;

  if (nmb->skip)
    return SVN_NO_ERROR;

  if (nmb->shadowed && !(nmb->pb && nmb->pb->shadowed))
    {
      svn_node_kind_t dst_kind, src_kind;

      SVN_ERR(svn_wc__db_depth_get_info(((void*)0), &dst_kind, ((void*)0),
                                        ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                        ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                        nmb->umb->wcroot, nmb->dst_relpath,
                                        nmb->umb->dst_op_depth,
                                        scratch_pool, scratch_pool));

      SVN_ERR(svn_wc__db_depth_get_info(((void*)0), &src_kind, ((void*)0), ((void*)0),
                                        ((void*)0), ((void*)0), ((void*)0),
                                        ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                        nmb->umb->wcroot, nmb->src_relpath,
                                        nmb->umb->src_op_depth,
                                        scratch_pool, scratch_pool));

      SVN_ERR(mark_tc_on_op_root(nmb,
                                 dst_kind, src_kind,
                                 svn_wc_conflict_action_edit,
                                 scratch_pool));
    }

  return SVN_NO_ERROR;
}
