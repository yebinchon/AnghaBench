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
struct vtdmap {int gsr; int /*<<< orphan*/  gcr; int /*<<< orphan*/  rta; } ;

/* Variables and functions */
 int /*<<< orphan*/  VTD_GCR_SRTP ; 
 int VTD_GSR_RTPS ; 
 int drhd_num ; 
 int /*<<< orphan*/  root_table ; 
 int /*<<< orphan*/  FUNC0 (struct vtdmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtdmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtdmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtdmap*) ; 
 struct vtdmap** vtdmaps ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
	int i;
	struct vtdmap *vtdmap;

	for (i = 0; i < drhd_num; i++) {
		vtdmap = vtdmaps[i];
		FUNC3(vtdmap);

		/* Update the root table address */
		vtdmap->rta = FUNC4(root_table);
		vtdmap->gcr = VTD_GCR_SRTP;
		while ((vtdmap->gsr & VTD_GSR_RTPS) == 0)
			;

		FUNC0(vtdmap);
		FUNC1(vtdmap);

		FUNC2(vtdmap);
	}
}