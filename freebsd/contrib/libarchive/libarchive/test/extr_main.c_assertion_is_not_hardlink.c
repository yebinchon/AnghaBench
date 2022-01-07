
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*,char const*) ;
 int is_hardlink (char const*,int,char const*,char const*) ;

int
assertion_is_not_hardlink(const char *file, int line,
    const char *path1, const char *path2)
{
 if (!is_hardlink(file, line, path1, path2))
  return (1);
 failure_start(file, line,
     "Files %s and %s should not be hardlinked", path1, path2);
 failure_finish(((void*)0));
 return (0);
}
