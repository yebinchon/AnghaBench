
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int dummy; } ;


 int FDT_ERR_BADVERSION ;
 struct fdt_property const* fdt_get_property_by_offset_ (void const*,int,int*) ;
 int fdt_version (void const*) ;

const struct fdt_property *fdt_get_property_by_offset(const void *fdt,
            int offset,
            int *lenp)
{



 if (fdt_version(fdt) < 0x10) {
  if (lenp)
   *lenp = -FDT_ERR_BADVERSION;
  return ((void*)0);
 }

 return fdt_get_property_by_offset_(fdt, offset, lenp);
}
