
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int myfunc3 (size_t) ;
 scalar_t__ prevent_inline ;
 int vfork () ;

void
myfunc2(size_t ncalls)
{
 myfunc3(ncalls);

 if (prevent_inline)
  vfork();
}
