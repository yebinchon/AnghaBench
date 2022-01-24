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
struct ptunit_result {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct pt_asid {int cr3; int vmcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_asid*) ; 
 struct pt_asid* FUNC1 (struct pt_mapped_section*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_mapped_section*,int /*<<< orphan*/ *,struct pt_asid*,int,int,int) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pt_asid const*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC6(void)
{
	struct pt_mapped_section msec;
	struct pt_asid asid;
	const struct pt_asid *pasid;

	FUNC0(&asid);
	asid.cr3 = 0xa00000ull;
	asid.vmcs = 0xb00000ull;

	FUNC2(&msec, NULL, &asid, 0x2000ull, 0x100ull, 0x1000ull);

	pasid = FUNC1(&msec);
	FUNC4(pasid);
	FUNC5(pasid->cr3, asid.cr3);
	FUNC5(pasid->vmcs, asid.vmcs);

	return FUNC3();
}