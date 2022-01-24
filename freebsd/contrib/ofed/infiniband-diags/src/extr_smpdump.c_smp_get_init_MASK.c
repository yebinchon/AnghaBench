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
typedef  scalar_t__ uint16_t ;
struct drsmp {int base_version; int class_version; int method; int /*<<< orphan*/  tid; int /*<<< orphan*/  attr_mod; scalar_t__ attr_id; int /*<<< orphan*/  mgmt_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMI_CLASS ; 
 int /*<<< orphan*/  drmad_tid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct drsmp*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(void *umad, int lid, int attr, int mod)
{
	struct drsmp *smp = (struct drsmp *)(FUNC4(umad));

	FUNC3(smp, 0, sizeof(*smp));

	smp->base_version = 1;
	smp->mgmt_class = IB_SMI_CLASS;
	smp->class_version = 1;

	smp->method = 1;
	smp->attr_id = (uint16_t) FUNC2((uint16_t) attr);
	smp->attr_mod = FUNC0(mod);
	smp->tid = FUNC1(drmad_tid++);

	FUNC5(umad, lid, 0, 0, 0);
}