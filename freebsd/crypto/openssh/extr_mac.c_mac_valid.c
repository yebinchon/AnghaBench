
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAC_SEP ;
 int free (char*) ;
 scalar_t__ mac_setup (int *,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,int ) ;

int
mac_valid(const char *names)
{
 char *maclist, *cp, *p;

 if (names == ((void*)0) || strcmp(names, "") == 0)
  return 0;
 if ((maclist = cp = strdup(names)) == ((void*)0))
  return 0;
 for ((p = strsep(&cp, MAC_SEP)); p && *p != '\0';
     (p = strsep(&cp, MAC_SEP))) {
  if (mac_setup(((void*)0), p) < 0) {
   free(maclist);
   return 0;
  }
 }
 free(maclist);
 return 1;
}
