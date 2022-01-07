
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gate_descriptor {int gd_p; scalar_t__ gd_type; scalar_t__ gd_dpl; scalar_t__ gd_selector; scalar_t__ gd_ist; long gd_looffset; scalar_t__ gd_hioffset; } ;


 int GCODE_SEL ;
 scalar_t__ GSEL (int ,scalar_t__) ;
 int KASSERT (int,char*) ;
 scalar_t__ SDT_SYSIGT ;
 scalar_t__ SEL_KPL ;
 struct gate_descriptor* idt ;
 int vmx_call_isr (uintptr_t) ;

__attribute__((used)) static void
vmx_trigger_hostintr(int vector)
{
 uintptr_t func;
 struct gate_descriptor *gd;

 gd = &idt[vector];

 KASSERT(vector >= 32 && vector <= 255, ("vmx_trigger_hostintr: "
     "invalid vector %d", vector));
 KASSERT(gd->gd_p == 1, ("gate descriptor for vector %d not present",
     vector));
 KASSERT(gd->gd_type == SDT_SYSIGT, ("gate descriptor for vector %d "
     "has invalid type %d", vector, gd->gd_type));
 KASSERT(gd->gd_dpl == SEL_KPL, ("gate descriptor for vector %d "
     "has invalid dpl %d", vector, gd->gd_dpl));
 KASSERT(gd->gd_selector == GSEL(GCODE_SEL, SEL_KPL), ("gate descriptor "
     "for vector %d has invalid selector %d", vector, gd->gd_selector));
 KASSERT(gd->gd_ist == 0, ("gate descriptor for vector %d has invalid "
     "IST %d", vector, gd->gd_ist));

 func = ((long)gd->gd_hioffset << 16 | gd->gd_looffset);
 vmx_call_isr(func);
}
