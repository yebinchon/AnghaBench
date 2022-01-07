
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int range_tree_add_impl (void*,int ,int ,int ) ;

void
range_tree_add(void *arg, uint64_t start, uint64_t size)
{
 range_tree_add_impl(arg, start, size, size);
}
