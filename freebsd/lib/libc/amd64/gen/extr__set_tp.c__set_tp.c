
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int amd64_set_fsbase (void*) ;

void
_set_tp(void *tp)
{

 amd64_set_fsbase(tp);
}
