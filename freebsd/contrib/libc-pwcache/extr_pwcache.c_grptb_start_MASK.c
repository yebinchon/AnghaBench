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
typedef  int /*<<< orphan*/  GIDC ;

/* Variables and functions */
 int /*<<< orphan*/  GNM_SZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** grptb ; 
 scalar_t__ grptb_fail ; 

__attribute__((used)) static int
FUNC1(void)
{

	if (grptb != NULL)
		return (0);
	if (grptb_fail)
		return (-1);
	if ((grptb = (GIDC **)FUNC0(GNM_SZ, sizeof(GIDC *))) == NULL) {
		++grptb_fail;
		return (-1);
	}
	return (0);
}