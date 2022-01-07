
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int nameoff; } ;


 int FDT_ERR_INTERNAL ;
 int fdt32_to_cpu (int ) ;
 int fdt_first_property_offset (void const*,int) ;
 struct fdt_property* fdt_get_property_by_offset_ (void const*,int,int*) ;
 int fdt_next_property_offset (void const*,int) ;
 scalar_t__ fdt_string_eq_ (void const*,int ,char const*,int) ;

__attribute__((used)) static const struct fdt_property *fdt_get_property_namelen_(const void *fdt,
                  int offset,
                  const char *name,
                  int namelen,
           int *lenp,
           int *poffset)
{
 for (offset = fdt_first_property_offset(fdt, offset);
      (offset >= 0);
      (offset = fdt_next_property_offset(fdt, offset))) {
  const struct fdt_property *prop;

  if (!(prop = fdt_get_property_by_offset_(fdt, offset, lenp))) {
   offset = -FDT_ERR_INTERNAL;
   break;
  }
  if (fdt_string_eq_(fdt, fdt32_to_cpu(prop->nameoff),
       name, namelen)) {
   if (poffset)
    *poffset = offset;
   return prop;
  }
 }

 if (lenp)
  *lenp = offset;
 return ((void*)0);
}
