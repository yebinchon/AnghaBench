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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_u ; 
 int /*<<< orphan*/  opttochk ; 
 int p_auid ; 

__attribute__((used)) static int
FUNC1(int au)
{

	/* Check if we want to select on auid. */
	if (FUNC0(opttochk, OPT_u)) {
		if (au != p_auid)
			return (0);
	}
	return (1);
}