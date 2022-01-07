
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug3 (char*,char const*) ;
 int error (char*,char*) ;
 int free (char*) ;
 int * kex_alg_by_name (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;

int
kex_names_valid(const char *names)
{
 char *s, *cp, *p;

 if (names == ((void*)0) || strcmp(names, "") == 0)
  return 0;
 if ((s = cp = strdup(names)) == ((void*)0))
  return 0;
 for ((p = strsep(&cp, ",")); p && *p != '\0';
     (p = strsep(&cp, ","))) {
  if (kex_alg_by_name(p) == ((void*)0)) {
   error("Unsupported KEX algorithm \"%.100s\"", p);
   free(s);
   return 0;
  }
 }
 debug3("kex names ok: [%s]", names);
 free(s);
 return 1;
}
