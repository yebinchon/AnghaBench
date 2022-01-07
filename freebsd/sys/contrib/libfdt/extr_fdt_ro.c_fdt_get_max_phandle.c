
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int FDT_ERR_NOTFOUND ;
 scalar_t__ fdt_get_phandle (void const*,int) ;
 int fdt_next_node (void const*,int,int *) ;

uint32_t fdt_get_max_phandle(const void *fdt)
{
 uint32_t max_phandle = 0;
 int offset;

 for (offset = fdt_next_node(fdt, -1, ((void*)0));;
      offset = fdt_next_node(fdt, offset, ((void*)0))) {
  uint32_t phandle;

  if (offset == -FDT_ERR_NOTFOUND)
   return max_phandle;

  if (offset < 0)
   return (uint32_t)-1;

  phandle = fdt_get_phandle(fdt, offset);
  if (phandle == (uint32_t)-1)
   continue;

  if (phandle > max_phandle)
   max_phandle = phandle;
 }

 return 0;
}
