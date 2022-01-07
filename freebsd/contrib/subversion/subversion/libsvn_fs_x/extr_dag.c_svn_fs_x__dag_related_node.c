
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_6__ {TYPE_1__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;
struct TYPE_5__ {int node_id; } ;


 int svn_fs_x__id_eq (int *,int *) ;

svn_boolean_t
svn_fs_x__dag_related_node(dag_node_t *lhs,
                           dag_node_t *rhs)
{
  return svn_fs_x__id_eq(&lhs->node_revision->node_id,
                         &rhs->node_revision->node_id);
}
