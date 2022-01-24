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
 int /*<<< orphan*/  M_FBT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dtrace_doubletrap_func ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fbt_cdev ; 
 int /*<<< orphan*/  fbt_id ; 
 int /*<<< orphan*/  fbt_invop ; 
 int /*<<< orphan*/ * fbt_probetab ; 
 scalar_t__ fbt_probetab_mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4()
{
	int error = 0;

	/* De-register the invalid opcode handler. */
	FUNC1(fbt_invop);

	dtrace_doubletrap_func = NULL;

	/* De-register this DTrace provider. */
	if ((error = FUNC2(fbt_id)) != 0)
		return (error);

	/* Free the probe table. */
	FUNC3(fbt_probetab, M_FBT);
	fbt_probetab = NULL;
	fbt_probetab_mask = 0;

	FUNC0(fbt_cdev);

	return (error);
}