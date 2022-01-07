
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_property {int dummy; } ;


 int bzero (char**,int) ;
 struct fdt_property* fdt_get_property (int ,int,char*,int*) ;
 int fdt_path_offset (int ,char const*) ;
 int fdt_setprop (int ,int,char*,char***,int) ;
 int fdtp ;
 scalar_t__ isdigit (char const) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 int strncpy (char*,char*,int) ;

void
fdt_fixup_stdout(const char *str)
{
 char *ptr;
 int len, no, sero;
 const struct fdt_property *prop;
 char *tmp[10];

 ptr = (char *)str + strlen(str) - 1;
 while (ptr > str && isdigit(*(str - 1)))
  str--;

 if (ptr == str)
  return;

 no = fdt_path_offset(fdtp, "/chosen");
 if (no < 0)
  return;

 prop = fdt_get_property(fdtp, no, "stdout", &len);


 if (prop == ((void*)0) || (prop != ((void*)0) && len == 0)) {

  bzero(tmp, 10 * sizeof(char));
  strcpy((char *)&tmp, "serial");
  if (strlen(ptr) > 3)

   return;

  strncpy((char *)tmp + 6, ptr, 3);
  sero = fdt_path_offset(fdtp, (const char *)tmp);
  if (sero < 0)




   return;

  fdt_setprop(fdtp, no, "stdout", &tmp,
      strlen((char *)&tmp) + 1);
  fdt_setprop(fdtp, no, "stdin", &tmp,
      strlen((char *)&tmp) + 1);
 }
}
