
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 int _access (char const*,int ) ;
 int access (char const*,int ) ;
 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;

int
assertion_file_exists(const char *filename, int line, const char *f)
{
 assertion_count(filename, line);





 if (!access(f, F_OK))
  return (1);

 failure_start(filename, line, "File should exist: %s", f);
 failure_finish(((void*)0));
 return (0);
}
