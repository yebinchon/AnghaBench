
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socipar ;
typedef int phandle_t ;
typedef int gpcipar ;
typedef int gicxref ;
typedef int gicipar ;


 int OF_finddevice (char*) ;
 int OF_getencprop (int,char*,int*,int) ;
 int OF_setprop (int,char*,int*,int) ;
 int OF_xref_from_node (int) ;
 int cpu_to_fdt32 (int) ;

__attribute__((used)) static void
fix_fdt_interrupt_data(void)
{
 phandle_t gicipar, gicnode, gicxref;
 phandle_t gpcipar, gpcnode, gpcxref;
 phandle_t socipar, socnode;
 int result;

 socnode = OF_finddevice("/soc");
 if (socnode == -1)
     return;
 result = OF_getencprop(socnode, "interrupt-parent", &socipar,
     sizeof(socipar));
 if (result <= 0)
  return;


 gicnode = OF_finddevice("/soc/interrupt-controller@00a01000");
 if (gicnode == -1)
  gicnode = OF_finddevice("/soc/interrupt-controller@a01000");
 if (gicnode == -1) {
  gicnode = OF_finddevice("/interrupt-controller@00a01000");
  if (gicnode == -1)
   gicnode = OF_finddevice("/interrupt-controller@a01000");
  if (gicnode == -1)
   return;
 }
 gicxref = OF_xref_from_node(gicnode);


 result = OF_getencprop(gicnode, "interrupt-parent", &gicipar,
     sizeof(gicipar));
 if (result <= 0)
  gicipar = gicxref;

 gpcnode = OF_finddevice("/soc/aips-bus@02000000/gpc@020dc000");
 if (gpcnode == -1)
  gpcnode = OF_finddevice("/soc/aips-bus@2000000/gpc@20dc000");
 if (gpcnode == -1)
  return;
 result = OF_getencprop(gpcnode, "interrupt-parent", &gpcipar,
     sizeof(gpcipar));
 if (result <= 0)
  return;
 gpcxref = OF_xref_from_node(gpcnode);

 if (socipar != gpcxref || gpcipar != gicxref || gicipar != gicxref)
  return;

 gicxref = cpu_to_fdt32(gicxref);
 OF_setprop(socnode, "interrupt-parent", &gicxref, sizeof(gicxref));
}
