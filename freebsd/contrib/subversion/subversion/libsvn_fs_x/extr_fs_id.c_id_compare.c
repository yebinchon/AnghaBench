
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int node_id; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_fs_node_relation_t ;
typedef int svn_fs_id_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_7__ {int noderev_id; } ;
typedef TYPE_2__ fs_x__id_t ;


 scalar_t__ FALSE ;
 int get_aux_pool (TYPE_2__ const*) ;
 TYPE_1__* get_noderev (TYPE_2__ const*) ;
 int svn_fs_node_common_ancestor ;
 int svn_fs_node_unchanged ;
 int svn_fs_node_unrelated ;
 scalar_t__ svn_fs_x__id_eq (int *,int *) ;
 int svn_pool_clear (int ) ;

__attribute__((used)) static svn_fs_node_relation_t
id_compare(const svn_fs_id_t *a,
           const svn_fs_id_t *b)
{
  const fs_x__id_t *id_a = (const fs_x__id_t *)a;
  const fs_x__id_t *id_b = (const fs_x__id_t *)b;
  svn_fs_x__noderev_t *noderev_a, *noderev_b;
  svn_boolean_t same_node;


  if (svn_fs_x__id_eq(&id_a->noderev_id, &id_b->noderev_id))
    return svn_fs_node_unchanged;





  noderev_a = get_noderev(id_a);
  noderev_b = get_noderev(id_b);

  if (noderev_a && noderev_b)
    same_node = svn_fs_x__id_eq(&noderev_a->node_id, &noderev_b->node_id);
  else
    same_node = FALSE;

  svn_pool_clear(get_aux_pool(id_a));
  svn_pool_clear(get_aux_pool(id_b));


  return same_node ? svn_fs_node_common_ancestor : svn_fs_node_unrelated;
}
