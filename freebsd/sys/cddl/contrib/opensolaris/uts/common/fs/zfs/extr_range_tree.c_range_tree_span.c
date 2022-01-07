
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int range_tree_t ;


 scalar_t__ range_tree_max (int *) ;
 scalar_t__ range_tree_min (int *) ;

uint64_t
range_tree_span(range_tree_t *rt)
{
 return (range_tree_max(rt) - range_tree_min(rt));
}
