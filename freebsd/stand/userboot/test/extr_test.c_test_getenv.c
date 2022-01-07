
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
test_getenv(void *arg, int idx)
{
 static char *vars[] = {
  "foo=bar",
  "bar=barbar",
  ((void*)0)
 };

 return (vars[idx]);
}
