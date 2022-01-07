
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*,char const*,char const*,...) ;

void
__assert(const char *func, const char *file, int line, const char *expression)
{
 if (func == ((void*)0))
  panic("Assertion failed: (%s), file %s, line %d.",
      expression, file, line);
 else
  panic(
      "Assertion failed: (%s), function %s, file %s, line %d.",
      expression, func, file, line);
}
