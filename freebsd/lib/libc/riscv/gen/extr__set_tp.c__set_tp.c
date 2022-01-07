
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
_set_tp(void *tp)
{

 __asm __volatile("mv  tp, %0" :: "r"((char*)tp + 0x10));
}
