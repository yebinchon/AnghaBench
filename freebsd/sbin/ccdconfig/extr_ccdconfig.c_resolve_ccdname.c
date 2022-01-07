
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _PATH_DEV ;
 int isdigit (char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static int
resolve_ccdname(char *name)
{

 if (!strncmp(name, _PATH_DEV, strlen(_PATH_DEV)))
  name += strlen(_PATH_DEV);
 if (strncmp(name, "ccd", 3))
  return -1;
 name += 3;
 if (!isdigit(*name))
  return -1;
 return (strtoul(name, ((void*)0), 10));
}
