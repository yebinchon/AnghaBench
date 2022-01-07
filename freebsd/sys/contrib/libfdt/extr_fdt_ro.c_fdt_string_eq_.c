
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fdt_string (void const*,int) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int fdt_string_eq_(const void *fdt, int stroffset,
     const char *s, int len)
{
 const char *p = fdt_string(fdt, stroffset);

 return (strlen(p) == len) && (memcmp(p, s, len) == 0);
}
