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
typedef  int uint32_t ;

/* Variables and functions */
 int CPUID2_HV ; 
 int CPUID_HV_IFACE_HYPERV ; 
 int CPUID_HV_MSR_HYPERCALL ; 
 int CPUID_HV_MSR_TIME_REFCNT ; 
 int CPUID_LEAF_HV_FEATURES ; 
 int CPUID_LEAF_HV_INTERFACE ; 
 int CPUID_LEAF_HV_LIMITS ; 
 int CPUID_LEAF_HV_MAXLEAF ; 
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2(void)
{
	char hv_vendor[16];
	uint32_t regs[4];

	FUNC0(1, regs);
	if ((regs[2] & CPUID2_HV) == 0)
		return (0);

	FUNC0(CPUID_LEAF_HV_MAXLEAF, regs);
	if (regs[0] < CPUID_LEAF_HV_LIMITS)
		return (0);

	((uint32_t *)&hv_vendor)[0] = regs[1];
	((uint32_t *)&hv_vendor)[1] = regs[2];
	((uint32_t *)&hv_vendor)[2] = regs[3];
	hv_vendor[12] = '\0';
	if (FUNC1(hv_vendor, "Microsoft Hv") != 0)
		return (0);

	FUNC0(CPUID_LEAF_HV_INTERFACE, regs);
	if (regs[0] != CPUID_HV_IFACE_HYPERV)
		return (0);

	FUNC0(CPUID_LEAF_HV_FEATURES, regs);
	if ((regs[0] & CPUID_HV_MSR_HYPERCALL) == 0)
		return (0);
	if ((regs[0] & CPUID_HV_MSR_TIME_REFCNT) == 0)
		return (0);

	return (1);
}