
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bus_space_handle_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int ENOMEM ;
 void* pmap_mapdev (int ,int ) ;

__attribute__((used)) static int
generic_bs_map(void *t, bus_addr_t bpa, bus_size_t size, int flags,
    bus_space_handle_t *bshp)
{
 void *va;

 va = pmap_mapdev(bpa, size);
 if (va == ((void*)0))
  return (ENOMEM);
 *bshp = (bus_space_handle_t)va;
 return (0);
}
