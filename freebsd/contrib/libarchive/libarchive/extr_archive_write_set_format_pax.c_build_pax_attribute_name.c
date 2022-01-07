
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int build_ustar_entry_name (char*,char const*,int,char*) ;
 int getpid () ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
build_pax_attribute_name(char *dest, const char *src)
{
 char buff[64];
 const char *p;


 if (src == ((void*)0) || *src == '\0') {
  strcpy(dest, "PaxHeader/blank");
  return (dest);
 }


 p = src + strlen(src);
 for (;;) {

  if (p > src && p[-1] == '/') {
   --p;
   continue;
  }

  if (p > src + 1 && p[-1] == '.'
      && p[-2] == '/') {
   --p;
   continue;
  }
  break;
 }



 if (p == src) {
  strcpy(dest, "/PaxHeader/rootdir");
  return (dest);
 }


 if (*src == '.' && p == src + 1) {
  strcpy(dest, "PaxHeader/currentdir");
  return (dest);
 }
 strcpy(buff, "PaxHeader");



 build_ustar_entry_name(dest, src, p - src, buff);

 return (dest);
}
