
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertion_count (char const*,int) ;
 scalar_t__ chdir (char const*) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;

int
assertion_chdir(const char *file, int line, const char *pathname)
{
 assertion_count(file, line);
 if (chdir(pathname) == 0)
  return (1);
 failure_start(file, line, "chdir(\"%s\")", pathname);
 failure_finish(((void*)0));
 return (0);

}
