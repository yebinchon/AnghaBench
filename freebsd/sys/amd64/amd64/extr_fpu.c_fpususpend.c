
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int fpusave (void*) ;
 int load_cr0 (int ) ;
 int rcr0 () ;
 int stop_emulating () ;

void
fpususpend(void *addr)
{
 u_long cr0;

 cr0 = rcr0();
 stop_emulating();
 fpusave(addr);
 load_cr0(cr0);
}
