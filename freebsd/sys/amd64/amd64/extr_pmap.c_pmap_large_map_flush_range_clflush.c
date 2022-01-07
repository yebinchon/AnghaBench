
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_offset_t ;


 int clflush (int ) ;
 scalar_t__ cpu_clflush_line_size ;

__attribute__((used)) static void
pmap_large_map_flush_range_clflush(vm_offset_t va, vm_size_t len)
{

 for (; len > 0; len -= cpu_clflush_line_size,
     va += cpu_clflush_line_size)
  clflush(va);
}
