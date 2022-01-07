
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*,...) ;
 scalar_t__ is_symlink (char const*,int,char const*,char const*) ;

int
assertion_is_symlink(const char *file, int line,
    const char *path, const char *contents)
{
 if (is_symlink(file, line, path, contents))
  return (1);
 if (contents)
  failure_start(file, line, "File %s is not a symlink to %s",
      path, contents);
 else
  failure_start(file, line, "File %s is not a symlink", path);
 failure_finish(((void*)0));
 return (0);
}
