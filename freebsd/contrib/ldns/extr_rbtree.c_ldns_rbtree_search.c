
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rbtree_t ;
typedef int ldns_rbnode_t ;


 scalar_t__ ldns_rbtree_find_less_equal (int *,void const*,int **) ;

ldns_rbnode_t *
ldns_rbtree_search (ldns_rbtree_t *rbtree, const void *key)
{
 ldns_rbnode_t *node;

 if (ldns_rbtree_find_less_equal(rbtree, key, &node)) {
  return node;
 } else {
  return ((void*)0);
 }
}
