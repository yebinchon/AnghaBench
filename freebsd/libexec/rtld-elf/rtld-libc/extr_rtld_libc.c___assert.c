
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int abort () ;
 int rtld_fdprintf (int ,char*,char const*,char const*,...) ;

void
__assert(const char *func, const char *file, int line, const char *failedexpr)
{

 if (func == ((void*)0))
  (void)rtld_fdprintf(STDERR_FILENO,
      "Assertion failed: (%s), file %s, line %d.\n", failedexpr,
      file, line);
 else
  (void)rtld_fdprintf(STDERR_FILENO,
      "Assertion failed: (%s), function %s, file %s, line %d.\n",
      failedexpr, func, file, line);
 abort();

}
