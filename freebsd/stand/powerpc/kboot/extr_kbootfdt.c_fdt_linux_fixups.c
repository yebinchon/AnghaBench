
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int fdt32_to_cpu (int const) ;
 int fdt64_to_cpu (int const) ;
 int fdt_add_mem_rsv (void*,int ,int ) ;
 int fdt_delprop (void*,int,char*) ;
 void* fdt_getprop (void*,int,char*,int*) ;
 int fdt_path_offset (void*,char*) ;
 int fdt_setprop (void*,int,char*,void const*,int) ;

__attribute__((used)) static void
fdt_linux_fixups(void *fdtp)
{
 int offset, len;
 const void *prop;






 offset = fdt_path_offset(fdtp, "/memory@0");
 if (offset > 0)
  fdt_delprop(fdtp, offset, "available");





 offset = fdt_path_offset(fdtp, "/ibm,opal");
 if (offset > 0) {
  const uint64_t *base, *size;
  base = fdt_getprop(fdtp, offset, "opal-base-address",
      &len);
  size = fdt_getprop(fdtp, offset, "opal-runtime-size",
      &len);
  if (base != ((void*)0) && size != ((void*)0))
   fdt_add_mem_rsv(fdtp, fdt64_to_cpu(*base),
       fdt64_to_cpu(*size));
 }
 offset = fdt_path_offset(fdtp, "/rtas");
 if (offset > 0) {
  const uint32_t *base, *size;
  base = fdt_getprop(fdtp, offset, "linux,rtas-base", &len);
  size = fdt_getprop(fdtp, offset, "rtas-size", &len);
  if (base != ((void*)0) && size != ((void*)0))
   fdt_add_mem_rsv(fdtp, fdt32_to_cpu(*base),
       fdt32_to_cpu(*size));
 }





 offset = fdt_path_offset(fdtp, "/chosen");
 if (offset > 0) {
  fdt_delprop(fdtp, offset, "cpu");

  offset = fdt_path_offset(fdtp, "/chosen");
  prop = fdt_getprop(fdtp, offset, "linux,stdout-package", &len);
  if (prop != ((void*)0)) {
   fdt_setprop(fdtp, offset, "stdout", prop, len);
   offset = fdt_path_offset(fdtp, "/chosen");
   fdt_setprop(fdtp, offset, "stdin", prop, len);
  }
 }
}
