
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fdt_getprop (void*,int,char const*,int*) ;

__attribute__((used)) static inline void *fdt_getprop_w(void *fdt, int nodeoffset,
      const char *name, int *lenp)
{
 return (void *)(uintptr_t)fdt_getprop(fdt, nodeoffset, name, lenp);
}
