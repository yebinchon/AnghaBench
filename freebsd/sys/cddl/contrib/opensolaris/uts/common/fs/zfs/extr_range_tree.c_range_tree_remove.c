
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int B_FALSE ;
 int range_tree_remove_impl (void*,int ,int ,int ) ;

void
range_tree_remove(void *arg, uint64_t start, uint64_t size)
{
 range_tree_remove_impl(arg, start, size, B_FALSE);
}
