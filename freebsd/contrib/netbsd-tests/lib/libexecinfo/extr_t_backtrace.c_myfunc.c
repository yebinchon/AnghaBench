
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int myfunc1 (size_t,size_t) ;
 scalar_t__ prevent_inline ;
 int vfork () ;

void
myfunc(size_t ncalls)
{
 myfunc1(ncalls, ncalls);

 if (prevent_inline)
  vfork();
}
