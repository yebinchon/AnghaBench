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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(int handle, u_char **stringp, int *hlenp)
{
	if (stringp == NULL || hlenp == NULL)
		return -1;
	*stringp = FUNC1(sizeof(int32_t));
	FUNC0(*stringp, handle);
	*hlenp = sizeof(int32_t);
	return 0;
}