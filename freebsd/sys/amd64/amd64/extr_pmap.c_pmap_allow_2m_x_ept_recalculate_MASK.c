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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CPU_VENDOR_INTEL ; 
 int IA32_ARCH_CAP_IF_PSCHANGE_MC_NO ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int cpu_ia32_arch_caps ; 
 int /*<<< orphan*/  cpu_id ; 
 scalar_t__ cpu_vendor_id ; 
 int pmap_allow_2m_x_ept ; 

void
FUNC3(void)
{
	/*
	 * SKL002, SKL012S.  Since the EPT format is only used by
	 * Intel CPUs, the vendor check is merely a formality.
	 */
	if (!(cpu_vendor_id != CPU_VENDOR_INTEL ||
	    (cpu_ia32_arch_caps & IA32_ARCH_CAP_IF_PSCHANGE_MC_NO) != 0 ||
	    (FUNC0(cpu_id) == 0x6 &&
	    (FUNC1(cpu_id) == 0x26 ||	/* Atoms */
	    FUNC1(cpu_id) == 0x27 ||
	    FUNC1(cpu_id) == 0x35 ||
	    FUNC1(cpu_id) == 0x36 ||
	    FUNC1(cpu_id) == 0x37 ||
	    FUNC1(cpu_id) == 0x86 ||
	    FUNC1(cpu_id) == 0x1c ||
	    FUNC1(cpu_id) == 0x4a ||
	    FUNC1(cpu_id) == 0x4c ||
	    FUNC1(cpu_id) == 0x4d ||
	    FUNC1(cpu_id) == 0x5a ||
	    FUNC1(cpu_id) == 0x5c ||
	    FUNC1(cpu_id) == 0x5d ||
	    FUNC1(cpu_id) == 0x5f ||
	    FUNC1(cpu_id) == 0x6e ||
	    FUNC1(cpu_id) == 0x7a ||
	    FUNC1(cpu_id) == 0x57 ||	/* Knights */
	    FUNC1(cpu_id) == 0x85))))
		pmap_allow_2m_x_ept = 1;
	FUNC2("hw.allow_2m_x_ept", &pmap_allow_2m_x_ept);
}