
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fdt32_t ;


 int FDT_ERR_BADNCELLS ;
 int FDT_MAX_NCELLS ;
 int fdt32_to_cpu (int const) ;
 int * fdt_getprop (void const*,int,char*,int*) ;

int fdt_address_cells(const void *fdt, int nodeoffset)
{
 const fdt32_t *ac;
 int val;
 int len;

 ac = fdt_getprop(fdt, nodeoffset, "#address-cells", &len);
 if (!ac)
  return 2;

 if (len != sizeof(*ac))
  return -FDT_ERR_BADNCELLS;

 val = fdt32_to_cpu(*ac);
 if ((val <= 0) || (val > FDT_MAX_NCELLS))
  return -FDT_ERR_BADNCELLS;

 return val;
}
