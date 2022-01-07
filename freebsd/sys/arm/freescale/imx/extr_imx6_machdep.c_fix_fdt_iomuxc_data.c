
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int OF_finddevice (char*) ;
 int OF_setprop (int,char*,char*,int) ;

__attribute__((used)) static void
fix_fdt_iomuxc_data(void)
{
 phandle_t node;
 node = OF_finddevice("/soc/aips-bus@2000000/iomuxc-gpr@20e0000");
 if (node != -1)
  OF_setprop(node, "status", "disabled", sizeof("disabled"));
}
