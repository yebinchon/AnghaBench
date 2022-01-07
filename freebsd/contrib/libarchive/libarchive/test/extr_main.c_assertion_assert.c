
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertion_count (char const*,int) ;
 int failure_finish (void*) ;
 int failure_start (char const*,int,char*,char const*) ;

int
assertion_assert(const char *file, int line, int value,
    const char *condition, void *extra)
{
 assertion_count(file, line);
 if (!value) {
  failure_start(file, line, "Assertion failed: %s", condition);
  failure_finish(extra);
 }
 return (value);
}
