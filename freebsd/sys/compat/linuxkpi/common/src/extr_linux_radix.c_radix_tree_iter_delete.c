
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct radix_tree_iter {int index; } ;


 int radix_tree_delete (struct radix_tree_root*,int ) ;

void
radix_tree_iter_delete(struct radix_tree_root *root,
    struct radix_tree_iter *iter, void **slot)
{
 radix_tree_delete(root, iter->index);
}
