
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 void stub1 (uintptr_t,uintptr_t) ;

void
dtrace_toxic_ranges(void (*func)(uintptr_t base, uintptr_t limit))
{

 (*func)(0, (uintptr_t)VM_MIN_KERNEL_ADDRESS);
}
