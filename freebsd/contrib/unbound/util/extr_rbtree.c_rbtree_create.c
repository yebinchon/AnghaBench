
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rbtree_type ;


 scalar_t__ malloc (int) ;
 int rbtree_init (int *,int (*) (void const*,void const*)) ;

rbtree_type *
rbtree_create (int (*cmpf)(const void *, const void *))
{
 rbtree_type *rbtree;


 rbtree = (rbtree_type *) malloc(sizeof(rbtree_type));
 if (!rbtree) {
  return ((void*)0);
 }


 rbtree_init(rbtree, cmpf);

 return rbtree;
}
