
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_6__ {scalar_t__ (* avl_compar ) (void*,void*) ;} ;
typedef TYPE_1__ avl_tree_t ;


 void* AVL_NEXT (TYPE_1__*,void*) ;
 void* AVL_PREV (TYPE_1__*,void*) ;
 int AVL_REINSERT (TYPE_1__*,void*) ;
 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ stub1 (void*,void*) ;
 scalar_t__ stub2 (void*,void*) ;

boolean_t
avl_update(avl_tree_t *t, void *obj)
{
 void *neighbor;

 neighbor = AVL_PREV(t, obj);
 if ((neighbor != ((void*)0)) && (t->avl_compar(obj, neighbor) < 0)) {
  AVL_REINSERT(t, obj);
  return (B_TRUE);
 }

 neighbor = AVL_NEXT(t, obj);
 if ((neighbor != ((void*)0)) && (t->avl_compar(obj, neighbor) > 0)) {
  AVL_REINSERT(t, obj);
  return (B_TRUE);
 }

 return (B_FALSE);
}
