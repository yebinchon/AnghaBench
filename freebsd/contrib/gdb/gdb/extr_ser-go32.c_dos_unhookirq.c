
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intrupt {scalar_t__ inuse; int new_pmhandler; int old_pmhandler; int new_rmhandler; int old_rmhandler; } ;


 int ICU_MASK ;
 int _go32_dpmi_free_iret_wrapper (int *) ;
 int _go32_dpmi_free_real_mode_callback (int *) ;
 int _go32_dpmi_set_protected_mode_interrupt_vector (unsigned int,int *) ;
 int _go32_dpmi_set_real_mode_interrupt_vector (unsigned int,int *) ;
 int disable () ;
 int enable () ;
 unsigned char icu_oldmask ;
 unsigned char inportb (int ) ;
 struct intrupt* intrupts ;
 int outportb (int ,unsigned char) ;

__attribute__((used)) static void
dos_unhookirq (struct intrupt *intr)
{
  unsigned int irq, vec;
  unsigned char mask;

  irq = intr - intrupts;
  vec = 0x08 + irq;


  mask = 1 << irq;
  disable ();
  outportb (ICU_MASK, inportb (ICU_MASK) | (mask & icu_oldmask));
  enable ();


  _go32_dpmi_set_real_mode_interrupt_vector (vec, &intr->old_rmhandler);
  _go32_dpmi_free_real_mode_callback (&intr->new_rmhandler);


  _go32_dpmi_set_protected_mode_interrupt_vector (vec, &intr->old_pmhandler);
  _go32_dpmi_free_iret_wrapper (&intr->new_pmhandler);
  intr->inuse = 0;
}
