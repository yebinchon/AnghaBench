
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlapic {scalar_t__ vcpuid; int svr_last; int boot_state; struct LAPIC* apic_page; } ;
struct LAPIC {int version; int dfr; int svr; scalar_t__ dcr_timer; int id; } ;


 int APIC_SVR_VECTOR ;
 int BS_INIT ;
 int BS_RUNNING ;
 int MAXLVTSHIFT ;
 int VLAPIC_MAXLVT_INDEX ;
 int VLAPIC_VERSION ;
 int bzero (struct LAPIC*,int) ;
 int vlapic_dcr_write_handler (struct vlapic*) ;
 int vlapic_get_id (struct vlapic*) ;
 int vlapic_mask_lvts (struct vlapic*) ;
 int vlapic_reset_tmr (struct vlapic*) ;

__attribute__((used)) static void
vlapic_reset(struct vlapic *vlapic)
{
 struct LAPIC *lapic;

 lapic = vlapic->apic_page;
 bzero(lapic, sizeof(struct LAPIC));

 lapic->id = vlapic_get_id(vlapic);
 lapic->version = VLAPIC_VERSION;
 lapic->version |= (VLAPIC_MAXLVT_INDEX << MAXLVTSHIFT);
 lapic->dfr = 0xffffffff;
 lapic->svr = APIC_SVR_VECTOR;
 vlapic_mask_lvts(vlapic);
 vlapic_reset_tmr(vlapic);

 lapic->dcr_timer = 0;
 vlapic_dcr_write_handler(vlapic);

 if (vlapic->vcpuid == 0)
  vlapic->boot_state = BS_RUNNING;
 else
  vlapic->boot_state = BS_INIT;

 vlapic->svr_last = lapic->svr;
}
