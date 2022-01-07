
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fdt_find_string_ (char*,int,char const*) ;
 int fdt_off_dt_struct (void*) ;
 int fdt_set_size_dt_strings (void*,int) ;
 int fdt_size_dt_strings (void*) ;
 int fdt_size_dt_struct (void*) ;
 int fdt_totalsize (void*) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int fdt_find_add_string_(void *fdt, const char *s)
{
 char *strtab = (char *)fdt + fdt_totalsize(fdt);
 const char *p;
 int strtabsize = fdt_size_dt_strings(fdt);
 int len = strlen(s) + 1;
 int struct_top, offset;

 p = fdt_find_string_(strtab - strtabsize, strtabsize, s);
 if (p)
  return p - strtab;


 offset = -strtabsize - len;
 struct_top = fdt_off_dt_struct(fdt) + fdt_size_dt_struct(fdt);
 if (fdt_totalsize(fdt) + offset < struct_top)
  return 0;

 memcpy(strtab + offset, s, len);
 fdt_set_size_dt_strings(fdt, strtabsize + len);
 return offset;
}
