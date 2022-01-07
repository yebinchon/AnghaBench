
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {int timer_period_bt; int timer_freq_bt; struct LAPIC* apic_page; } ;
struct LAPIC {int icr_timer; int dcr_timer; } ;


 int FREQ2BT (int,int *) ;
 int VLAPIC_BUS_FREQ ;
 int VLAPIC_CTR2 (struct vlapic*,char*,int ,int) ;
 int VLAPIC_TIMER_LOCK (struct vlapic*) ;
 int VLAPIC_TIMER_UNLOCK (struct vlapic*) ;
 int bintime_mul (int *,int ) ;
 int vlapic_timer_divisor (int ) ;

void
vlapic_dcr_write_handler(struct vlapic *vlapic)
{
 struct LAPIC *lapic;
 int divisor;

 lapic = vlapic->apic_page;
 VLAPIC_TIMER_LOCK(vlapic);

 divisor = vlapic_timer_divisor(lapic->dcr_timer);
 VLAPIC_CTR2(vlapic, "vlapic dcr_timer=%#x, divisor=%d",
     lapic->dcr_timer, divisor);







 FREQ2BT(VLAPIC_BUS_FREQ / divisor, &vlapic->timer_freq_bt);
 vlapic->timer_period_bt = vlapic->timer_freq_bt;
 bintime_mul(&vlapic->timer_period_bt, lapic->icr_timer);

 VLAPIC_TIMER_UNLOCK(vlapic);
}
