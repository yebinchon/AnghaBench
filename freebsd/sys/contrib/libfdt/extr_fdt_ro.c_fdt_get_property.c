
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int dummy; } ;


 struct fdt_property const* fdt_get_property_namelen (void const*,int,char const*,int ,int*) ;
 int strlen (char const*) ;

const struct fdt_property *fdt_get_property(const void *fdt,
         int nodeoffset,
         const char *name, int *lenp)
{
 return fdt_get_property_namelen(fdt, nodeoffset, name,
     strlen(name), lenp);
}
