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
struct vtdmap {int gsr; int /*<<< orphan*/  gcr; int /*<<< orphan*/  cap; int /*<<< orphan*/  ext_cap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VTD_GCR_WBF ; 
 int VTD_GSR_WBFS ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct vtdmap *vtdmap)
{

	if (FUNC1(vtdmap->ext_cap) == 0)
		FUNC2();

	if (FUNC0(vtdmap->cap)) {
		vtdmap->gcr = VTD_GCR_WBF;
		while ((vtdmap->gsr & VTD_GSR_WBFS) != 0)
			;
	}
}