
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
_set_tp(void *tpval)
{

 __asm __volatile("mr 13,%0" :: "r"((char*)tpval + 0x7010));
}
