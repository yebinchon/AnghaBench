
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fdt_get_property (void*,int,char*,int*) ;
 int fdt_path_offset (void*,char*) ;
 char* fdt_stringlist_get (void*,int,char*,int,int*) ;
 scalar_t__ fdt_stringlist_search (void*,int,char*,char const*) ;

__attribute__((used)) static int
fdt_check_overlay_compatible(void *base_fdt, void *overlay_fdt)
{
 const char *compat;
 int compat_len, ocompat_len;
 int oroot_offset, root_offset;
 int slidx, sllen;

 oroot_offset = fdt_path_offset(overlay_fdt, "/");
 if (oroot_offset < 0)
  return (oroot_offset);






 if (fdt_get_property(overlay_fdt, oroot_offset, "compatible",
     &ocompat_len) == ((void*)0) || ocompat_len == 0)
  return (0);
 root_offset = fdt_path_offset(base_fdt, "/");
 if (root_offset < 0)
  return (root_offset);




 if (fdt_get_property(base_fdt, root_offset, "compatible",
     &compat_len) == ((void*)0))
  return (compat_len);
 else if(compat_len == 0)
  return (1);

 slidx = 0;
 compat = fdt_stringlist_get(overlay_fdt, oroot_offset, "compatible",
     slidx, &sllen);
 while (compat != ((void*)0)) {
  if (fdt_stringlist_search(base_fdt, root_offset, "compatible",
      compat) >= 0)
   return (0);
  ++slidx;
  compat = fdt_stringlist_get(overlay_fdt, oroot_offset,
      "compatible", slidx, &sllen);
 };


 return (1);
}
