
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;

char *
join(
 char *path1,
 char *path2)
{
 char *p;

 if (path1[0] == '\0' || path2[0] == '/')
  return strdup(path2);
 (void)asprintf(&p, path1[strlen(path1)-1] == '/' ?
     "%s%s" : "%s/%s", path1, path2);
 return p;
}
