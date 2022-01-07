
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSR_F ;
 int PSR_I ;
 int cninit_finish () ;
 scalar_t__ cold ;
 int enable_interrupts (int) ;

__attribute__((used)) static void
configure_final(void *dummy)
{

 enable_interrupts(PSR_I | PSR_F);
 cninit_finish();
 cold = 0;
}
