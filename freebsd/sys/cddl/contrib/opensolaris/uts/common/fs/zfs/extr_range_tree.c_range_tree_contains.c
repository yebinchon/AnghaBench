
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int range_tree_t ;
typedef int boolean_t ;


 int * range_tree_find (int *,int ,int ) ;

boolean_t
range_tree_contains(range_tree_t *rt, uint64_t start, uint64_t size)
{
 return (range_tree_find(rt, start, size) != ((void*)0));
}
