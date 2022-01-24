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
typedef  int uint64_t ;
typedef  int u_int ;

/* Variables and functions */
 int CPUID_EXTSTATE_XSAVEOPT ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int XFEATURE_AVX512 ; 
 int XFEATURE_ENABLED_SSE ; 
 int XFEATURE_ENABLED_X87 ; 
 int XFEATURE_MPX ; 
 int /*<<< orphan*/  FUNC1 (int,int,int*) ; 
 int* ctx_switch_xsave ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  use_xsave ; 
 int xsave_mask ; 

__attribute__((used)) static void
FUNC5(void)
{
	u_int cp[4];
	uint64_t xsave_mask_user;
	bool old_wp;

	if (!use_xsave)
		return;
	FUNC1(0xd, 0x0, cp);
	xsave_mask = XFEATURE_ENABLED_X87 | XFEATURE_ENABLED_SSE;
	if ((cp[0] & xsave_mask) != xsave_mask)
		FUNC3("CPU0 does not support X87 or SSE: %x", cp[0]);
	xsave_mask = ((uint64_t)cp[3] << 32) | cp[0];
	xsave_mask_user = xsave_mask;
	FUNC0("hw.xsave_mask", &xsave_mask_user);
	xsave_mask_user |= XFEATURE_ENABLED_X87 | XFEATURE_ENABLED_SSE;
	xsave_mask &= xsave_mask_user;
	if ((xsave_mask & XFEATURE_AVX512) != XFEATURE_AVX512)
		xsave_mask &= ~XFEATURE_AVX512;
	if ((xsave_mask & XFEATURE_MPX) != XFEATURE_MPX)
		xsave_mask &= ~XFEATURE_MPX;

	FUNC1(0xd, 0x1, cp);
	if ((cp[0] & CPUID_EXTSTATE_XSAVEOPT) != 0) {
		/*
		 * Patch the XSAVE instruction in the cpu_switch code
		 * to XSAVEOPT.  We assume that XSAVE encoding used
		 * REX byte, and set the bit 4 of the r/m byte.
		 *
		 * It seems that some BIOSes give control to the OS
		 * with CR0.WP already set, making the kernel text
		 * read-only before cpu_startup().
		 */
		old_wp = FUNC2();
		ctx_switch_xsave[3] |= 0x10;
		FUNC4(old_wp);
	}
}