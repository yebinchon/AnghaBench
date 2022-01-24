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
typedef  int /*<<< orphan*/  fbt_probe_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACE_PRIV_USER ; 
 int FBT_PROBETAB_SIZE ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  M_FBT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  dtrace_doubletrap_func ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fbt_attr ; 
 int /*<<< orphan*/  fbt_cdev ; 
 int /*<<< orphan*/  fbt_cdevsw ; 
 int /*<<< orphan*/  fbt_doubletrap ; 
 int /*<<< orphan*/  fbt_id ; 
 int /*<<< orphan*/  fbt_invop ; 
 int /*<<< orphan*/  fbt_linker_file_cb ; 
 int /*<<< orphan*/  fbt_pops ; 
 int /*<<< orphan*/  fbt_probetab ; 
 int fbt_probetab_mask ; 
 int fbt_probetab_size ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(void *dummy)
{
	/* Create the /dev/dtrace/fbt entry. */
	fbt_cdev = FUNC3(&fbt_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
	    "dtrace/fbt");

	/* Default the probe table size if not specified. */
	if (fbt_probetab_size == 0)
		fbt_probetab_size = FBT_PROBETAB_SIZE;

	/* Choose the hash mask for the probe table. */
	fbt_probetab_mask = fbt_probetab_size - 1;

	/* Allocate memory for the probe table. */
	fbt_probetab =
	    FUNC4(fbt_probetab_size * sizeof (fbt_probe_t *), M_FBT, M_WAITOK | M_ZERO);

	dtrace_doubletrap_func = fbt_doubletrap;
	FUNC0(fbt_invop);

	if (FUNC1("fbt", &fbt_attr, DTRACE_PRIV_USER,
	    NULL, &fbt_pops, NULL, &fbt_id) != 0)
		return;

	/* Create probes for the kernel and already-loaded modules. */
	FUNC2(fbt_linker_file_cb, NULL);
}