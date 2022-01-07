
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int phandle_t ;


 int EFAULT ;
 int EINVAL ;
 int OF_finddevice (char*) ;
 scalar_t__ fdt_regsize (int,int *,int *) ;
 int ofw_bus_find_compatible (int,char*) ;

__attribute__((used)) static int
alpine_get_cpu_resume_base(u_long *pbase, u_long *psize)
{
 phandle_t node;
 u_long base = 0;
 u_long size = 0;

 if (pbase == ((void*)0) || psize == ((void*)0))
  return (EINVAL);

 if ((node = OF_finddevice("/")) == -1)
  return (EFAULT);

 if ((node =
     ofw_bus_find_compatible(node, "annapurna-labs,al-cpu-resume")) == 0)
  return (EFAULT);

 if (fdt_regsize(node, &base, &size))
  return (EFAULT);

 *pbase = base;
 *psize = size;

 return (0);
}
