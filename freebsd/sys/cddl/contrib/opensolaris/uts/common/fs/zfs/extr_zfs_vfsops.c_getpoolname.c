
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 int MAXNAMELEN ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int
getpoolname(const char *osname, char *poolname)
{
 char *p;

 p = strchr(osname, '/');
 if (p == ((void*)0)) {
  if (strlen(osname) >= MAXNAMELEN)
   return (ENAMETOOLONG);
  (void) strcpy(poolname, osname);
 } else {
  if (p - osname >= MAXNAMELEN)
   return (ENAMETOOLONG);
  (void) strncpy(poolname, osname, p - osname);
  poolname[p - osname] = '\0';
 }
 return (0);
}
