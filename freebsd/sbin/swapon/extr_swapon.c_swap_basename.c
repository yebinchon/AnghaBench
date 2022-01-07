
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char const*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
swap_basename(const char *name)
{
 char *dname, *p;

 dname = strdup(name);
 p = strrchr(dname, '.');

 *p = '\0';

 return (dname);
}
