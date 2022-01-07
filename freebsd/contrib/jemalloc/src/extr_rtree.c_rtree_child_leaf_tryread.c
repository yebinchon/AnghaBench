
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int child; } ;
typedef TYPE_1__ rtree_node_elm_t ;
typedef int rtree_leaf_elm_t ;


 int ATOMIC_ACQUIRE ;
 int ATOMIC_RELAXED ;
 int assert (int) ;
 scalar_t__ atomic_load_p (int *,int ) ;

__attribute__((used)) static rtree_leaf_elm_t *
rtree_child_leaf_tryread(rtree_node_elm_t *elm, bool dependent) {
 rtree_leaf_elm_t *leaf;

 if (dependent) {
  leaf = (rtree_leaf_elm_t *)atomic_load_p(&elm->child,
      ATOMIC_RELAXED);
 } else {
  leaf = (rtree_leaf_elm_t *)atomic_load_p(&elm->child,
      ATOMIC_ACQUIRE);
 }

 assert(!dependent || leaf != ((void*)0));
 return leaf;
}
