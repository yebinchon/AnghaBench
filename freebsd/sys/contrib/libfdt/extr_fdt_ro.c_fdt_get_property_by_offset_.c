
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int len; } ;


 int fdt32_to_cpu (int ) ;
 int fdt_check_prop_offset_ (void const*,int) ;
 struct fdt_property* fdt_offset_ptr_ (void const*,int) ;

__attribute__((used)) static const struct fdt_property *fdt_get_property_by_offset_(const void *fdt,
                    int offset,
                    int *lenp)
{
 int err;
 const struct fdt_property *prop;

 if ((err = fdt_check_prop_offset_(fdt, offset)) < 0) {
  if (lenp)
   *lenp = err;
  return ((void*)0);
 }

 prop = fdt_offset_ptr_(fdt, offset);

 if (lenp)
  *lenp = fdt32_to_cpu(prop->len);

 return prop;
}
