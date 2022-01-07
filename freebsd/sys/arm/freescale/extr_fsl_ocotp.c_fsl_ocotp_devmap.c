
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_offset_t ;
typedef scalar_t__ u_long ;
typedef int phandle_t ;


 int OF_finddevice (char*) ;
 int fdt_depth_search_compatible (int,char*,int ) ;
 scalar_t__ fdt_regsize (int,scalar_t__*,scalar_t__*) ;
 int * ocotp_regs ;
 scalar_t__ ocotp_size ;
 int panic (char*) ;
 int * pmap_mapdev (int ,scalar_t__) ;

__attribute__((used)) static void
fsl_ocotp_devmap(void)
{
 phandle_t child, root;
 u_long base, size;

 if ((root = OF_finddevice("/")) == -1)
  goto fatal;
 if ((child = fdt_depth_search_compatible(root, "fsl,imx6q-ocotp", 0)) == 0)
  goto fatal;
 if (fdt_regsize(child, &base, &size) != 0)
  goto fatal;

 ocotp_size = (vm_size_t)size;

 if ((ocotp_regs = pmap_mapdev((vm_offset_t)base, ocotp_size)) == ((void*)0))
  goto fatal;

 return;
fatal:
 panic("cannot find/map the ocotp registers");
}
