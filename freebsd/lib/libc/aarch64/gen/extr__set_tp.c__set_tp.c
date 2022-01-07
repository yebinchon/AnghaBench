
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
_set_tp(void *tp)
{

 asm volatile("msr	tpidr_el0, %0" : : "r"(tp));
}
