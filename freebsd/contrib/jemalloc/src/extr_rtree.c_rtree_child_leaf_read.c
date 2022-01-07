
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int rtree_t ;
struct TYPE_4__ {int child; } ;
typedef TYPE_1__ rtree_node_elm_t ;
typedef int rtree_leaf_elm_t ;


 int assert (int) ;
 int * rtree_child_leaf_tryread (TYPE_1__*,int) ;
 int * rtree_leaf_init (int *,int *,int *) ;
 int rtree_leaf_valid (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static rtree_leaf_elm_t *
rtree_child_leaf_read(tsdn_t *tsdn, rtree_t *rtree, rtree_node_elm_t *elm,
    unsigned level, bool dependent) {
 rtree_leaf_elm_t *leaf;

 leaf = rtree_child_leaf_tryread(elm, dependent);
 if (!dependent && unlikely(!rtree_leaf_valid(leaf))) {
  leaf = rtree_leaf_init(tsdn, rtree, &elm->child);
 }
 assert(!dependent || leaf != ((void*)0));
 return leaf;
}
