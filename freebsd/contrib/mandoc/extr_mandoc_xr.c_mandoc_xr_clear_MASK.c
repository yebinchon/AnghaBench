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
struct mandoc_xr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mandoc_xr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mandoc_xr* FUNC2 (int /*<<< orphan*/ *,unsigned int*) ; 
 struct mandoc_xr* FUNC3 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/ * xr_hash ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct mandoc_xr	*xr;
	unsigned int		 slot;

	if (xr_hash == NULL)
		return;
	for (xr = FUNC2(xr_hash, &slot); xr != NULL;
	     xr = FUNC3(xr_hash, &slot))
		FUNC0(xr);
	FUNC1(xr_hash);
}