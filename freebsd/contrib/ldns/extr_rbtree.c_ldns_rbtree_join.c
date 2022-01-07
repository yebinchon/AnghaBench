
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rbtree_t ;


 int ldns_rbtree_insert_vref ;
 int ldns_traverse_postorder (int *,int ,int *) ;

void
ldns_rbtree_join(ldns_rbtree_t *tree1, ldns_rbtree_t *tree2)
{
 ldns_traverse_postorder(tree2, ldns_rbtree_insert_vref, tree1);
}
