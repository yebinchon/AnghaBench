
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * node_pool; int node_revision; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pmemdup (int *,TYPE_1__ const*,int) ;
 int copy_node_revision (int ,int *) ;

dag_node_t *
svn_fs_x__dag_dup(const dag_node_t *node,
                  apr_pool_t *result_pool)
{

  dag_node_t *new_node = apr_pmemdup(result_pool, node, sizeof(*new_node));


  new_node->node_revision = copy_node_revision(node->node_revision,
                                               result_pool);
  new_node->node_pool = result_pool;

  return new_node;
}
