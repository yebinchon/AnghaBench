
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* cmp ) (void const*,void const*) ;scalar_t__ count; int root; } ;
typedef TYPE_1__ ldns_rbtree_t ;


 int LDNS_RBTREE_NULL ;

void
ldns_rbtree_init(ldns_rbtree_t *rbtree, int (*cmpf)(const void *, const void *))
{

 rbtree->root = LDNS_RBTREE_NULL;
 rbtree->count = 0;
 rbtree->cmp = cmpf;
}
