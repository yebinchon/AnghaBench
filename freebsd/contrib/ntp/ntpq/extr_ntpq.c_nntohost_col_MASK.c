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
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  showhostnames ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 char* FUNC6 (int /*<<< orphan*/ ,size_t) ; 

const char *
FUNC7(
	sockaddr_u *	addr,
	size_t		width,
	int		preserve_lowaddrbits
	)
{
	const char *	out;

	if (!showhostnames || FUNC1(addr)) {
		if (preserve_lowaddrbits)
			out = FUNC5(FUNC4(addr), width);
		else
			out = FUNC6(FUNC4(addr), width);
	} else if (FUNC0(addr)) {
		out = FUNC2(addr);
	} else {
		out = FUNC6(FUNC3(addr), width);
	}
	return out;
}