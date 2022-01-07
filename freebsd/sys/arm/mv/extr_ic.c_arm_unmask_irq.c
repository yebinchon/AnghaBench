
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ ic_error_regs; scalar_t__ ic_high_regs; } ;


 int mv_ic_get_mask () ;
 int mv_ic_get_mask_error () ;
 int mv_ic_get_mask_hi () ;
 TYPE_1__* mv_ic_sc ;
 int mv_ic_set_mask (int) ;
 int mv_ic_set_mask_error (int) ;
 int mv_ic_set_mask_hi (int) ;

void
arm_unmask_irq(uintptr_t nb)
{
 uint32_t mr;

 if (nb < 32) {
  mr = mv_ic_get_mask();
  mr |= (1 << nb);
  mv_ic_set_mask(mr);

 } else if ((nb < 64) && mv_ic_sc->ic_high_regs) {
  mr = mv_ic_get_mask_hi();
  mr |= (1 << (nb - 32));
  mv_ic_set_mask_hi(mr);

 } else if ((nb < 96) && mv_ic_sc->ic_error_regs) {
  mr = mv_ic_get_mask_error();
  mr |= (1 << (nb - 64));
  mv_ic_set_mask_error(mr);
 }
}
