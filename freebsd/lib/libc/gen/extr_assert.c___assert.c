
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fprintf (int ,char*,char const*,char const*,...) ;
 int stderr ;

void
__assert(const char *func, const char *file, int line, const char *failedexpr)
{
 if (func == ((void*)0))
  (void)fprintf(stderr,
       "Assertion failed: (%s), file %s, line %d.\n", failedexpr,
       file, line);
 else
  (void)fprintf(stderr,
       "Assertion failed: (%s), function %s, file %s, line %d.\n",
       failedexpr, func, file, line);
 abort();

}
