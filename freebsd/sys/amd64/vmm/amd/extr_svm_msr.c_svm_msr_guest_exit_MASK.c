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
struct svm_softc {int dummy; } ;

/* Variables and functions */
 size_t IDX_MSR_CSTAR ; 
 size_t IDX_MSR_LSTAR ; 
 size_t IDX_MSR_SF_MASK ; 
 size_t IDX_MSR_STAR ; 
 int /*<<< orphan*/  MSR_CSTAR ; 
 int /*<<< orphan*/  MSR_LSTAR ; 
 int /*<<< orphan*/  MSR_SF_MASK ; 
 int /*<<< orphan*/  MSR_STAR ; 
 int /*<<< orphan*/ * host_msrs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(struct svm_softc *sc, int vcpu)
{
	/*
	 * Save guest MSRs (if any) and restore host MSRs.
	 */
	FUNC0(MSR_LSTAR, host_msrs[IDX_MSR_LSTAR]);
	FUNC0(MSR_CSTAR, host_msrs[IDX_MSR_CSTAR]);
	FUNC0(MSR_STAR, host_msrs[IDX_MSR_STAR]);
	FUNC0(MSR_SF_MASK, host_msrs[IDX_MSR_SF_MASK]);

	/* MSR_KGSBASE will be restored on the way back to userspace */
}