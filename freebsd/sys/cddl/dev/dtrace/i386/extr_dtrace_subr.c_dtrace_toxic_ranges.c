
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t kernelbase ;
 void stub1 (uintptr_t,uintptr_t) ;

void
dtrace_toxic_ranges(void (*func)(uintptr_t base, uintptr_t limit))
{
 (*func)(0, kernelbase);
}
