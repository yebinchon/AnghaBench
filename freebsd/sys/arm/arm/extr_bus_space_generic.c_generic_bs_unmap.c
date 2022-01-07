
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int bus_space_tag_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef int bus_size_t ;


 int pmap_unmapdev (int ,int ) ;

void
generic_bs_unmap(bus_space_tag_t t, bus_space_handle_t h, bus_size_t size)
{

 pmap_unmapdev((vm_offset_t)h, size);
}
