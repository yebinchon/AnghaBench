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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC5(
	const sockaddr_u *	d1,
	const sockaddr_u *	d2
	)
{
	int	i;

	FUNC3(FUNC0(d1) == FUNC0(d2));

	if (FUNC1(d1)) {
		if (FUNC4(d1) < FUNC4(d2))
			return -1;
		else if (FUNC4(d1) == FUNC4(d2))
			return 0;
		else
			return 1;
	}

	for (i = 0; i < (int)sizeof(FUNC2(d1)); i++) {
		if (FUNC2(d1)[i] < FUNC2(d2)[i])
			return -1;
		else if (FUNC2(d1)[i] > FUNC2(d2)[i])
			return 1;
	}

	return 0;
}