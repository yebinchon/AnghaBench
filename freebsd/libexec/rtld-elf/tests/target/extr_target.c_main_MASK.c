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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 float FUNC1 (int,int) ; 

int
FUNC2(int argc, char *argv[])
{
	float hypotenuse = FUNC1(3, 4);
	FUNC0("the hypotenuse of 3 and 4 is %d\n", (int) hypotenuse);

	return 0;
}