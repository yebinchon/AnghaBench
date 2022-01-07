
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rbtree_t ;


 int LDNS_FREE (int *) ;

void
ldns_rbtree_free(ldns_rbtree_t *rbtree)
{
 LDNS_FREE(rbtree);
}
