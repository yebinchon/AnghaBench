
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_t ;
typedef int authz_rule_segment_t ;
typedef int apr_pool_t ;


 int * create_node (int *,int *) ;

__attribute__((used)) static node_t *
ensure_node(node_t **node,
            authz_rule_segment_t *segment,
            apr_pool_t *result_pool)
{
  if (!*node)
    *node = create_node(segment, result_pool);

  return *node;
}
