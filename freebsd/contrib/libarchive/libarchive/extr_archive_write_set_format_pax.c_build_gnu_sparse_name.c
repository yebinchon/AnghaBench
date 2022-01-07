
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int build_ustar_entry_name (char*,char const*,int,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
build_gnu_sparse_name(char *dest, const char *src)
{
 const char *p;


 if (src == ((void*)0) || *src == '\0') {
  strcpy(dest, "GNUSparseFile/blank");
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



 build_ustar_entry_name(dest, src, p - src, "GNUSparseFile.0");

 return (dest);
}
