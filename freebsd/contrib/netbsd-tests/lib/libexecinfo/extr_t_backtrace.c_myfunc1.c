
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int myfunc2 (size_t) ;
 scalar_t__ prevent_inline ;
 int vfork () ;

void
myfunc1(size_t origcalls, volatile size_t ncalls)
{
 if (ncalls > 1)
  myfunc1(origcalls, ncalls - 1);
 else
  myfunc2(origcalls);

 if (prevent_inline)
  vfork();
}
