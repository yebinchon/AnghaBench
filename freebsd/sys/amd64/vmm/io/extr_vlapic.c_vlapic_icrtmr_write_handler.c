
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vlapic {int callout; int timer_period_bt; int timer_fire_bt; int timer_freq_bt; struct LAPIC* apic_page; } ;
struct LAPIC {scalar_t__ icr_timer; } ;
typedef int sbintime_t ;


 int VLAPIC_TIMER_LOCK (struct vlapic*) ;
 int VLAPIC_TIMER_UNLOCK (struct vlapic*) ;
 int bintime_add (int *,int *) ;
 int bintime_mul (int *,scalar_t__) ;
 int binuptime (int *) ;
 int bttosbt (int ) ;
 int callout_reset_sbt (int *,int ,int ,int ,struct vlapic*,int ) ;
 int callout_stop (int *) ;
 int vlapic_callout_handler ;

void
vlapic_icrtmr_write_handler(struct vlapic *vlapic)
{
 struct LAPIC *lapic;
 sbintime_t sbt;
 uint32_t icr_timer;

 VLAPIC_TIMER_LOCK(vlapic);

 lapic = vlapic->apic_page;
 icr_timer = lapic->icr_timer;

 vlapic->timer_period_bt = vlapic->timer_freq_bt;
 bintime_mul(&vlapic->timer_period_bt, icr_timer);

 if (icr_timer != 0) {
  binuptime(&vlapic->timer_fire_bt);
  bintime_add(&vlapic->timer_fire_bt, &vlapic->timer_period_bt);

  sbt = bttosbt(vlapic->timer_period_bt);
  callout_reset_sbt(&vlapic->callout, sbt, 0,
      vlapic_callout_handler, vlapic, 0);
 } else
  callout_stop(&vlapic->callout);

 VLAPIC_TIMER_UNLOCK(vlapic);
}
