
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmx {int dummy; } ;


 scalar_t__ MSR_APIC_DCR_TIMER ;
 int MSR_APIC_EOI ;
 scalar_t__ MSR_APIC_ESR ;
 scalar_t__ MSR_APIC_ICR ;
 scalar_t__ MSR_APIC_ICR_TIMER ;
 scalar_t__ MSR_APIC_ID ;
 scalar_t__ MSR_APIC_IRR0 ;
 scalar_t__ MSR_APIC_ISR0 ;
 scalar_t__ MSR_APIC_LDR ;
 scalar_t__ MSR_APIC_LVT_ERROR ;
 scalar_t__ MSR_APIC_LVT_LINT0 ;
 scalar_t__ MSR_APIC_LVT_LINT1 ;
 scalar_t__ MSR_APIC_LVT_PCINT ;
 scalar_t__ MSR_APIC_LVT_THERMAL ;
 scalar_t__ MSR_APIC_LVT_TIMER ;
 int MSR_APIC_SELF_IPI ;
 scalar_t__ MSR_APIC_SVR ;
 scalar_t__ MSR_APIC_TMR0 ;
 int MSR_APIC_TPR ;
 scalar_t__ MSR_APIC_VERSION ;
 scalar_t__ guest_msr_ro (struct vmx*,scalar_t__) ;
 scalar_t__ guest_msr_rw (struct vmx*,int ) ;

__attribute__((used)) static int
vmx_allow_x2apic_msrs(struct vmx *vmx)
{
 int i, error;

 error = 0;




 error += guest_msr_ro(vmx, MSR_APIC_ID);
 error += guest_msr_ro(vmx, MSR_APIC_VERSION);
 error += guest_msr_ro(vmx, MSR_APIC_LDR);
 error += guest_msr_ro(vmx, MSR_APIC_SVR);

 for (i = 0; i < 8; i++)
  error += guest_msr_ro(vmx, MSR_APIC_ISR0 + i);

 for (i = 0; i < 8; i++)
  error += guest_msr_ro(vmx, MSR_APIC_TMR0 + i);

 for (i = 0; i < 8; i++)
  error += guest_msr_ro(vmx, MSR_APIC_IRR0 + i);

 error += guest_msr_ro(vmx, MSR_APIC_ESR);
 error += guest_msr_ro(vmx, MSR_APIC_LVT_TIMER);
 error += guest_msr_ro(vmx, MSR_APIC_LVT_THERMAL);
 error += guest_msr_ro(vmx, MSR_APIC_LVT_PCINT);
 error += guest_msr_ro(vmx, MSR_APIC_LVT_LINT0);
 error += guest_msr_ro(vmx, MSR_APIC_LVT_LINT1);
 error += guest_msr_ro(vmx, MSR_APIC_LVT_ERROR);
 error += guest_msr_ro(vmx, MSR_APIC_ICR_TIMER);
 error += guest_msr_ro(vmx, MSR_APIC_DCR_TIMER);
 error += guest_msr_ro(vmx, MSR_APIC_ICR);







 error += guest_msr_rw(vmx, MSR_APIC_TPR);
 error += guest_msr_rw(vmx, MSR_APIC_EOI);
 error += guest_msr_rw(vmx, MSR_APIC_SELF_IPI);

 return (error);
}
