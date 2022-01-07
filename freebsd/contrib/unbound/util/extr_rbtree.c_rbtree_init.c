
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* cmp ) (void const*,void const*) ;scalar_t__ count; int root; } ;
typedef TYPE_1__ rbtree_type ;


 int RBTREE_NULL ;

void
rbtree_init(rbtree_type *rbtree, int (*cmpf)(const void *, const void *))
{

 rbtree->root = RBTREE_NULL;
 rbtree->count = 0;
 rbtree->cmp = cmpf;
}
