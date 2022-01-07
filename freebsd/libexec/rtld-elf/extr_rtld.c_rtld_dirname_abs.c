
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg (char*,char const*,char*) ;
 int * realpath (char const*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
rtld_dirname_abs(const char *path, char *base)
{
 char *last;

 if (realpath(path, base) == ((void*)0))
  return (-1);
 dbg("%s -> %s", path, base);
 last = strrchr(base, '/');
 if (last == ((void*)0))
  return (-1);
 if (last != base)
  *last = '\0';
 return (0);
}
