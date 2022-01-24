#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pmap_t ;
struct TYPE_8__ {int /*<<< orphan*/  pm_cookie; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int asid_epoch ; 
 int /*<<< orphan*/  bcast_tlbi_workaround ; 
 int /*<<< orphan*/  curpmap ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ish ; 
 TYPE_1__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC9(pmap_t pmap)
{
	int epoch;

	FUNC1(FUNC2(curpmap) != NULL, ("no active pmap"));
	FUNC1(pmap != kernel_pmap, ("kernel pmap activation"));
	if (pmap == FUNC2(curpmap))
		return (false);

	/*
	 * Ensure that the store to curpmap is globally visible before the
	 * load from asid_epoch is performed.
	 */
	FUNC3(curpmap, pmap);
	FUNC4(ish);
	epoch = FUNC0(pmap->pm_cookie);
	if (epoch >= 0 && epoch != asid_epoch)
		FUNC6(pmap);

	FUNC8(FUNC7(pmap));
	if (FUNC2(bcast_tlbi_workaround) != 0)
		FUNC5();
	return (true);
}