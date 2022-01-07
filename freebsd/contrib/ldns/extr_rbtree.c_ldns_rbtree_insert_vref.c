
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rbtree_t ;
typedef int ldns_rbnode_t ;


 int ldns_rbtree_insert (int *,int *) ;

void
ldns_rbtree_insert_vref(ldns_rbnode_t *data, void *rbtree)
{
 (void) ldns_rbtree_insert((ldns_rbtree_t *) rbtree,
       data);
}
