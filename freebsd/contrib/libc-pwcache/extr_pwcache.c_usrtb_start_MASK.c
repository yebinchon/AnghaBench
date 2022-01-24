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
typedef  int /*<<< orphan*/  UIDC ;

/* Variables and functions */
 int /*<<< orphan*/  UNM_SZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** usrtb ; 
 scalar_t__ usrtb_fail ; 

__attribute__((used)) static int
FUNC1(void)
{

	if (usrtb != NULL)
		return (0);
	if (usrtb_fail)
		return (-1);
	if ((usrtb = (UIDC **)FUNC0(UNM_SZ, sizeof(UIDC *))) == NULL) {
		++usrtb_fail;
		return (-1);
	}
	return (0);
}