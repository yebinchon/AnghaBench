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
struct system_segment_descriptor {int /*<<< orphan*/  sd_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPROC0_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct system_segment_descriptor* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDT_SYSTSS ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tss ; 

__attribute__((used)) static __inline void
FUNC3(void)
{
	struct system_segment_descriptor *tss_sd;

	/*
	 * The TSS descriptor was in use prior to launching the guest so it
	 * has been marked busy.
	 *
	 * 'ltr' requires the descriptor to be marked available so change the
	 * type to "64-bit available TSS".
	 */
	tss_sd = FUNC1(tss);
	tss_sd->sd_type = SDT_SYSTSS;
	FUNC2(FUNC0(GPROC0_SEL, SEL_KPL));
}