
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
run_exitstr(int rv)
{
 if (rv > 0)
  return ("with error code");
 if (rv < 0)
  return ("with signal");
 return (((void*)0));
}
