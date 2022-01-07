
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *
path_strip(const char *path, const char *strip)
{
 size_t len;

 if (strip == ((void*)0))
  return (xstrdup(path));

 len = strlen(strip);
 if (strncmp(path, strip, len) == 0) {
  if (strip[len - 1] != '/' && path[len] == '/')
   len++;
  return (xstrdup(path + len));
 }

 return (xstrdup(path));
}
