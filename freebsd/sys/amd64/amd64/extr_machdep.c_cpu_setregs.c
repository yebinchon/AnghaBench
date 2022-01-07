
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int register_t ;


 int CR0_AM ;
 int CR0_MP ;
 int CR0_NE ;
 int CR0_TS ;
 int CR0_WP ;
 int load_cr0 (int) ;
 int rcr0 () ;

void
cpu_setregs(void)
{
 register_t cr0;

 cr0 = rcr0();




 cr0 |= CR0_MP | CR0_NE | CR0_TS | CR0_WP | CR0_AM;
 load_cr0(cr0);
}
