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

/* Variables and functions */
 int FDT_ERR_NOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * fdtp ; 

__attribute__((used)) static int
FUNC7(void)
{
	int chosen;

	FUNC0("fdt_fixup()\n");

	if (fdtp == NULL && FUNC5() != 0)
		return (0);

	/* Create /chosen node (if not exists) */
	if ((chosen = FUNC6(fdtp, 0, "chosen")) ==
	    -FDT_ERR_NOTFOUND)
		chosen = FUNC1(fdtp, 0, "chosen");

	/* Value assigned to fixup-applied does not matter. */
	if (FUNC2(fdtp, chosen, "fixup-applied", NULL))
		return (1);

	FUNC3();

	/*
	 * Re-fetch the /chosen subnode; our fixups may apply overlays or add
	 * nodes/properties that invalidate the offset we grabbed or created
	 * above, so we can no longer trust it.
	 */
	chosen = FUNC6(fdtp, 0, "chosen");
	FUNC4(fdtp, chosen, "fixup-applied", NULL, 0);
	return (1);
}