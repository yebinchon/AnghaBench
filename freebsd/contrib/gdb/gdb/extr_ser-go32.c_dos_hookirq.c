
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_long ;
struct TYPE_6__ {void* pm_offset; void* pm_selector; } ;
struct TYPE_5__ {void* pm_offset; void* pm_selector; } ;
struct intrupt {int inuse; TYPE_2__ new_pmhandler; int old_pmhandler; TYPE_1__ new_rmhandler; int regs; int old_rmhandler; } ;
typedef scalar_t__ isr_t ;


 int ICU_MASK ;
 unsigned int NINTR ;
 int _go32_dpmi_allocate_iret_wrapper (TYPE_2__*) ;
 scalar_t__ _go32_dpmi_allocate_real_mode_callback_iret (TYPE_1__*,int *) ;
 int _go32_dpmi_get_protected_mode_interrupt_vector (unsigned int,int *) ;
 int _go32_dpmi_get_real_mode_interrupt_vector (unsigned int,int *) ;
 scalar_t__ _go32_dpmi_set_protected_mode_interrupt_vector (unsigned int,TYPE_2__*) ;
 scalar_t__ _go32_dpmi_set_real_mode_interrupt_vector (unsigned int,TYPE_1__*) ;
 void* _go32_my_cs () ;
 int disable () ;
 int enable () ;
 int inportb (int ) ;
 struct intrupt* intrupts ;
 scalar_t__* isrs ;
 int outportb (int ,int) ;

__attribute__((used)) static struct intrupt *
dos_hookirq (unsigned int irq)
{
  struct intrupt *intr;
  unsigned int vec;
  isr_t isr;

  if (irq >= NINTR)
    return 0;

  intr = &intrupts[irq];
  if (intr->inuse)
    return 0;

  vec = 0x08 + irq;
  isr = isrs[irq];


  _go32_dpmi_get_real_mode_interrupt_vector (vec, &intr->old_rmhandler);

  intr->new_rmhandler.pm_selector = _go32_my_cs ();
  intr->new_rmhandler.pm_offset = (u_long) isr;
  if (_go32_dpmi_allocate_real_mode_callback_iret (&intr->new_rmhandler,
         &intr->regs))
    {
      return 0;
    }

  if (_go32_dpmi_set_real_mode_interrupt_vector (vec, &intr->new_rmhandler))
    {
      return 0;
    }


  _go32_dpmi_get_protected_mode_interrupt_vector (vec, &intr->old_pmhandler);

  intr->new_pmhandler.pm_selector = _go32_my_cs ();
  intr->new_pmhandler.pm_offset = (u_long) isr;
  _go32_dpmi_allocate_iret_wrapper (&intr->new_pmhandler);

  if (_go32_dpmi_set_protected_mode_interrupt_vector (vec,
            &intr->new_pmhandler))
    {
      return 0;
    }


  disable ();
  outportb (ICU_MASK, inportb (ICU_MASK) & ~(1 << irq));
  enable ();

  intr->inuse = 1;
  return intr;
}
