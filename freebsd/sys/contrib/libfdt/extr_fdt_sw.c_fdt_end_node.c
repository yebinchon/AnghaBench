
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fdt32_t ;


 int FDT_END_NODE ;
 int FDT_ERR_NOSPACE ;
 int FDT_SW_CHECK_HEADER (void*) ;
 int FDT_TAGSIZE ;
 int cpu_to_fdt32 (int ) ;
 int * fdt_grab_space_ (void*,int ) ;

int fdt_end_node(void *fdt)
{
 fdt32_t *en;

 FDT_SW_CHECK_HEADER(fdt);

 en = fdt_grab_space_(fdt, FDT_TAGSIZE);
 if (! en)
  return -FDT_ERR_NOSPACE;

 *en = cpu_to_fdt32(FDT_END_NODE);
 return 0;
}
