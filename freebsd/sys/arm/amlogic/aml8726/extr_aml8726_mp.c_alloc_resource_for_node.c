
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct resource {int r_bushandle; int r_bustag; } ;
typedef int phandle_t ;


 int OF_parent (int ) ;
 int bus_space_map (int ,scalar_t__,scalar_t__,int ,int *) ;
 int fdt_get_range (int ,int ,scalar_t__*,scalar_t__*) ;
 int fdt_regsize (int ,scalar_t__*,scalar_t__*) ;
 int fdtbus_bs_tag ;
 int memset (struct resource*,int ,int) ;

__attribute__((used)) static int
alloc_resource_for_node(phandle_t node, struct resource *res, u_long *size)
{
 int err;
 u_long pbase, psize;
 u_long start;

 if ((err = fdt_get_range(OF_parent(node), 0, &pbase, &psize)) != 0 ||
     (err = fdt_regsize(node, &start, size)) != 0)
  return (err);

 start += pbase;

 memset(res, 0, sizeof(*res));

 res->r_bustag = fdtbus_bs_tag;

 err = bus_space_map(res->r_bustag, start, *size, 0, &res->r_bushandle);

 return (err);
}
