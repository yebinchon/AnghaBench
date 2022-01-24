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
 int /*<<< orphan*/  pax_enabled ; 
 int /*<<< orphan*/  pax_global ; 
 int FUNC0 (char*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC1(void)
{
	size_t len = sizeof(int);
	int rv;

	rv = FUNC0("security.pax.mprotect.global",
	    &pax_global, &len, NULL, 0);

	if (rv != 0)
		return false;

	rv = FUNC0("security.pax.mprotect.enabled",
	    &pax_enabled, &len, NULL, 0);

	return rv == 0;
}