
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
typedef int phandle_t ;


 int EFAULT ;
 int EINVAL ;
 int OF_finddevice (char*) ;
 int fdt_find_compatible (int,char*,int) ;
 scalar_t__ fdt_regsize (int,int *,int *) ;

__attribute__((used)) static int
alpine_get_wdt_base(uint32_t *pbase, uint32_t *psize)
{
 phandle_t node;
 u_long base = 0;
 u_long size = 0;

 if (pbase == ((void*)0) || psize == ((void*)0))
  return (EINVAL);

 if ((node = OF_finddevice("/")) == -1)
  return (EFAULT);

 if ((node = fdt_find_compatible(node, "simple-bus", 1)) == 0)
  return (EFAULT);

 if ((node =
     fdt_find_compatible(node, "arm,sp805", 1)) == 0)
  return (EFAULT);

 if (fdt_regsize(node, &base, &size))
  return (EFAULT);

 *pbase = base;
 *psize = size;

 return (0);
}
