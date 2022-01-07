
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
get_path_component(char *name, size_t n, const char *fn)
{
 char *p;
 size_t l;

 p = strchr(fn, '/');
 if (p == ((void*)0)) {
  if ((l = strlen(fn)) == 0)
   return (0);
 } else
  l = p - fn;
 if (l > n -1)
  return (-1);
 memcpy(name, fn, l);
 name[l] = '\0';

 return ((int)l);
}
