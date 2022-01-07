
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {unsigned long height; } ;


 unsigned long RADIX_TREE_MAP_SHIFT ;

__attribute__((used)) static inline unsigned long
radix_max(struct radix_tree_root *root)
{
 return ((1UL << (root->height * RADIX_TREE_MAP_SHIFT)) - 1UL);
}
