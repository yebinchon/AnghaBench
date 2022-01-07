
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int avl_tree_t ;


 int space_reftree_add_node (int *,int ,int ) ;

void
space_reftree_add_seg(avl_tree_t *t, uint64_t start, uint64_t end,
    int64_t refcnt)
{
 space_reftree_add_node(t, start, refcnt);
 space_reftree_add_node(t, end, -refcnt);
}
