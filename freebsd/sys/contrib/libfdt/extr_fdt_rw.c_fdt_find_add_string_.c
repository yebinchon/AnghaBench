
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fdt_find_string_ (char*,int,char const*) ;
 int fdt_off_dt_strings (void*) ;
 int fdt_size_dt_strings (void*) ;
 int fdt_splice_string_ (void*,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int fdt_find_add_string_(void *fdt, const char *s)
{
 char *strtab = (char *)fdt + fdt_off_dt_strings(fdt);
 const char *p;
 char *new;
 int len = strlen(s) + 1;
 int err;

 p = fdt_find_string_(strtab, fdt_size_dt_strings(fdt), s);
 if (p)

  return (p - strtab);

 new = strtab + fdt_size_dt_strings(fdt);
 err = fdt_splice_string_(fdt, len);
 if (err)
  return err;

 memcpy(new, s, len);
 return (new - strtab);
}
