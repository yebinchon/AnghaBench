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
typedef  int u_int ;

/* Variables and functions */
 int AMD_CPUID_SVM_NP ; 
 int AMD_CPUID_SVM_NRIP_SAVE ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int nasid ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int svm_feature ; 

__attribute__((used)) static int
FUNC3(void)
{
	u_int regs[4];

	/* CPUID Fn8000_000A is for SVM */
	FUNC1(0x8000000A, regs);
	svm_feature &= regs[3];

	/*
	 * The number of ASIDs can be configured to be less than what is
	 * supported by the hardware but not more.
	 */
	if (nasid == 0 || nasid > regs[1])
		nasid = regs[1];
	FUNC0(nasid > 1, ("Insufficient ASIDs for guests: %#x", nasid));

	/* bhyve requires the Nested Paging feature */
	if (!(svm_feature & AMD_CPUID_SVM_NP)) {
		FUNC2("SVM: Nested Paging feature not available.\n");
		return (ENXIO);
	}

	/* bhyve requires the NRIP Save feature */
	if (!(svm_feature & AMD_CPUID_SVM_NRIP_SAVE)) {
		FUNC2("SVM: NRIP Save feature not available.\n");
		return (ENXIO);
	}

	return (0);
}