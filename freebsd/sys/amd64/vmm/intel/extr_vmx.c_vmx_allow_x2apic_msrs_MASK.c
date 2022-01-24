#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vmx {int dummy; } ;

/* Variables and functions */
 scalar_t__ MSR_APIC_DCR_TIMER ; 
 int /*<<< orphan*/  MSR_APIC_EOI ; 
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
 int /*<<< orphan*/  MSR_APIC_SELF_IPI ; 
 scalar_t__ MSR_APIC_SVR ; 
 scalar_t__ MSR_APIC_TMR0 ; 
 int /*<<< orphan*/  MSR_APIC_TPR ; 
 scalar_t__ MSR_APIC_VERSION ; 
 scalar_t__ FUNC0 (struct vmx*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct vmx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vmx *vmx)
{
	int i, error;

	error = 0;

	/*
	 * Allow readonly access to the following x2APIC MSRs from the guest.
	 */
	error += FUNC0(vmx, MSR_APIC_ID);
	error += FUNC0(vmx, MSR_APIC_VERSION);
	error += FUNC0(vmx, MSR_APIC_LDR);
	error += FUNC0(vmx, MSR_APIC_SVR);

	for (i = 0; i < 8; i++)
		error += FUNC0(vmx, MSR_APIC_ISR0 + i);

	for (i = 0; i < 8; i++)
		error += FUNC0(vmx, MSR_APIC_TMR0 + i);

	for (i = 0; i < 8; i++)
		error += FUNC0(vmx, MSR_APIC_IRR0 + i);

	error += FUNC0(vmx, MSR_APIC_ESR);
	error += FUNC0(vmx, MSR_APIC_LVT_TIMER);
	error += FUNC0(vmx, MSR_APIC_LVT_THERMAL);
	error += FUNC0(vmx, MSR_APIC_LVT_PCINT);
	error += FUNC0(vmx, MSR_APIC_LVT_LINT0);
	error += FUNC0(vmx, MSR_APIC_LVT_LINT1);
	error += FUNC0(vmx, MSR_APIC_LVT_ERROR);
	error += FUNC0(vmx, MSR_APIC_ICR_TIMER);
	error += FUNC0(vmx, MSR_APIC_DCR_TIMER);
	error += FUNC0(vmx, MSR_APIC_ICR);

	/*
	 * Allow TPR, EOI and SELF_IPI MSRs to be read and written by the guest.
	 *
	 * These registers get special treatment described in the section
	 * "Virtualizing MSR-Based APIC Accesses".
	 */
	error += FUNC1(vmx, MSR_APIC_TPR);
	error += FUNC1(vmx, MSR_APIC_EOI);
	error += FUNC1(vmx, MSR_APIC_SELF_IPI);

	return (error);
}