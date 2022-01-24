#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dde_cv; int /*<<< orphan*/ * dde_repair_abd; int /*<<< orphan*/ ** dde_lead_zio; int /*<<< orphan*/  dde_loading; } ;
typedef  TYPE_1__ ddt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDT_PHYS_TYPES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC4(ddt_entry_t *dde)
{
	FUNC0(!dde->dde_loading);

	for (int p = 0; p < DDT_PHYS_TYPES; p++)
		FUNC0(dde->dde_lead_zio[p] == NULL);

	if (dde->dde_repair_abd != NULL)
		FUNC1(dde->dde_repair_abd);

	FUNC2(&dde->dde_cv);
	FUNC3(dde, sizeof (*dde));
}