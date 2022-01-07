
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 scalar_t__ dtrace_copycheck (uintptr_t,uintptr_t,size_t) ;
 int dtrace_copystr (uintptr_t,uintptr_t,size_t,int volatile*) ;

void
dtrace_copyoutstr(uintptr_t kaddr, uintptr_t uaddr, size_t size,
    volatile uint16_t *flags)
{

 if (dtrace_copycheck(uaddr, kaddr, size))
  dtrace_copystr(kaddr, uaddr, size, flags);
}
