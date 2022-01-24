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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  portdev_t ;

/* Variables and functions */
 char* iMajorError ; 
 char* iMinorError ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char* tooManyFields ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static portdev_t
FUNC7(int n, u_long numbers[], const char **error)
{
	portdev_t dev = 0;

	if (n == 2) {
		dev = FUNC3(numbers[0], numbers[1]);
		if ((u_long)FUNC1(dev) != numbers[0])
			*error = iMajorError;
		if ((u_long)FUNC4(dev) != numbers[1])
			*error = iMinorError;
	} else if (n == 3) {
		dev = FUNC2(numbers[0], numbers[1], numbers[2]);
		if ((u_long)FUNC0(dev) != numbers[0])
			*error = iMajorError;
		if ((u_long)FUNC6(dev) != numbers[1])
			*error = "invalid unit number";
		if ((u_long)FUNC5(dev) != numbers[2])
			*error = "invalid subunit number";
	} else
		*error = tooManyFields;
	return (dev);
}