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
struct gate_descriptor {int gd_p; scalar_t__ gd_type; scalar_t__ gd_dpl; scalar_t__ gd_selector; scalar_t__ gd_ist; long gd_looffset; scalar_t__ gd_hioffset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCODE_SEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ SDT_SYSIGT ; 
 scalar_t__ SEL_KPL ; 
 struct gate_descriptor* idt ; 
 int /*<<< orphan*/  FUNC2 (uintptr_t) ; 

__attribute__((used)) static void
FUNC3(int vector)
{
	uintptr_t func;
	struct gate_descriptor *gd;

	gd = &idt[vector];

	FUNC1(vector >= 32 && vector <= 255, ("vmx_trigger_hostintr: "
	    "invalid vector %d", vector));
	FUNC1(gd->gd_p == 1, ("gate descriptor for vector %d not present",
	    vector));
	FUNC1(gd->gd_type == SDT_SYSIGT, ("gate descriptor for vector %d "
	    "has invalid type %d", vector, gd->gd_type));
	FUNC1(gd->gd_dpl == SEL_KPL, ("gate descriptor for vector %d "
	    "has invalid dpl %d", vector, gd->gd_dpl));
	FUNC1(gd->gd_selector == FUNC0(GCODE_SEL, SEL_KPL), ("gate descriptor "
	    "for vector %d has invalid selector %d", vector, gd->gd_selector));
	FUNC1(gd->gd_ist == 0, ("gate descriptor for vector %d has invalid "
	    "IST %d", vector, gd->gd_ist));

	func = ((long)gd->gd_hioffset << 16 | gd->gd_looffset);
	FUNC2(func);
}