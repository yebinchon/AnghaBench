
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint32_t ;
typedef int type ;
typedef scalar_t__ phandle_t ;
typedef int cpuid ;


 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 char* cpu_cpuid_prop_sun4u () ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static phandle_t
find_bsp_sun4u(phandle_t node, uint32_t bspid)
{
 char type[sizeof("cpu")];
 phandle_t child;
 uint32_t cpuid;

 for (; node > 0; node = OF_peer(node)) {
  child = OF_child(node);
  if (child > 0) {
   child = find_bsp_sun4u(child, bspid);
   if (child > 0)
    return (child);
  } else {
   if (OF_getprop(node, "device_type", type,
       sizeof(type)) <= 0)
    continue;
   if (strcmp(type, "cpu") != 0)
    continue;
   if (OF_getprop(node, cpu_cpuid_prop_sun4u(), &cpuid,
       sizeof(cpuid)) <= 0)
    continue;
   if (cpuid == bspid)
    return (node);
  }
 }
 return (0);
}
