
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int panic (char*) ;

void
generic_bs_free(bus_space_tag_t t, bus_space_handle_t bsh, bus_size_t size)
{

 panic("generic_bs_free(): not implemented");
}
