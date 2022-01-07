
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pattern_sub_nodes; } ;
typedef TYPE_1__ node_t ;
typedef int node_pattern_t ;
typedef int apr_pool_t ;


 int * apr_pcalloc (int *,int) ;

__attribute__((used)) static node_pattern_t *
ensure_pattern_sub_nodes(node_t *node,
                         apr_pool_t *result_pool)
{
  if (node->pattern_sub_nodes == ((void*)0))
    node->pattern_sub_nodes = apr_pcalloc(result_pool,
                                          sizeof(*node->pattern_sub_nodes));

  return node->pattern_sub_nodes;
}
