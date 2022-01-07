
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int dtrace_copy (uintptr_t,uintptr_t,size_t) ;
 scalar_t__ dtrace_copycheck (uintptr_t,uintptr_t,size_t) ;

void
dtrace_copyout(uintptr_t kaddr, uintptr_t uaddr, size_t size,
    volatile uint16_t *flags)
{

 if (dtrace_copycheck(uaddr, kaddr, size))
  dtrace_copy(kaddr, uaddr, size);
}
