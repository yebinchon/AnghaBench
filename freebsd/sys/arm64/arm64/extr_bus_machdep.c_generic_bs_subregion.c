
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;



__attribute__((used)) static int
generic_bs_subregion(void *t, bus_space_handle_t bsh, bus_size_t offset,
    bus_size_t size, bus_space_handle_t *nbshp)
{

 *nbshp = bsh + offset;
 return (0);
}
