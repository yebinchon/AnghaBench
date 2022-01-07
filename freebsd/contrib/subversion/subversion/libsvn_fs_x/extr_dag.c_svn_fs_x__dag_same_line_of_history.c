
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int copy_id; int node_id; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_boolean_t ;
struct TYPE_6__ {TYPE_1__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;


 scalar_t__ svn_fs_x__id_eq (int *,int *) ;

svn_boolean_t
svn_fs_x__dag_same_line_of_history(dag_node_t *lhs,
                                   dag_node_t *rhs)
{
  svn_fs_x__noderev_t *lhs_noderev = lhs->node_revision;
  svn_fs_x__noderev_t *rhs_noderev = rhs->node_revision;

  return svn_fs_x__id_eq(&lhs_noderev->node_id, &rhs_noderev->node_id)
      && svn_fs_x__id_eq(&lhs_noderev->copy_id, &rhs_noderev->copy_id);
}
