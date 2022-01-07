
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ic_error_regs; scalar_t__ ic_high_regs; } ;


 TYPE_1__* mv_ic_sc ;
 int mv_ic_set_mask (int ) ;
 int mv_ic_set_mask_error (int ) ;
 int mv_ic_set_mask_hi (int ) ;

__attribute__((used)) static void
arm_mask_irq_all(void)
{

 mv_ic_set_mask(0);

 if (mv_ic_sc->ic_high_regs)
  mv_ic_set_mask_hi(0);

 if (mv_ic_sc->ic_error_regs)
  mv_ic_set_mask_error(0);
}
