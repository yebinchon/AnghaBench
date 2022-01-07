
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 char* malloc (size_t) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
setpath(char **what, char *val)
{
 char *path;
 size_t len;
 int rel;

 len = strlen(val) + 1;
 rel = (val[0] != '/') ? 1 : 0;
 path = malloc(len + rel);
 if (path == ((void*)0))
  return (ENOMEM);
 path[0] = '/';
 strcpy(path + rel, val);

 *what = path;
 return (0);
}
