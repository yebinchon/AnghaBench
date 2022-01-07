
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i386_set_gsbase (void*) ;

void
_set_tp(void *tp)
{

 i386_set_gsbase(tp);
}
