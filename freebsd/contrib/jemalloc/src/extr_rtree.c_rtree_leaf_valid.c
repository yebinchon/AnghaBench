
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtree_leaf_elm_t ;



__attribute__((used)) static bool
rtree_leaf_valid(rtree_leaf_elm_t *leaf) {
 return ((uintptr_t)leaf != (uintptr_t)0);
}
