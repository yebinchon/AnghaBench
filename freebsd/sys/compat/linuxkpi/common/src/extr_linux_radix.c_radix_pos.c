
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long RADIX_TREE_MAP_MASK ;
 int RADIX_TREE_MAP_SHIFT ;

__attribute__((used)) static inline int
radix_pos(long id, int height)
{
 return (id >> (RADIX_TREE_MAP_SHIFT * height)) & RADIX_TREE_MAP_MASK;
}
