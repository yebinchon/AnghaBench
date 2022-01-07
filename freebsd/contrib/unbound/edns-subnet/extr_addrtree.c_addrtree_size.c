
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrtree {size_t size_bytes; } ;



inline size_t
addrtree_size(const struct addrtree *tree)
{
 return tree?tree->size_bytes:0;
}
