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
#define  EBUSY 129 
#define  EINVAL 128 
 scalar_t__ Eflag ; 
 scalar_t__ SWAPON ; 
 int errno ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ which_prog ; 

__attribute__((used)) static const char *
FUNC5(const char *name, int doingall)
{
	int error;

	if (which_prog == SWAPON)
		error = Eflag ? FUNC2(name) : FUNC1(name);
	else /* SWAPOFF */
		error = FUNC0(name);

	if (error == -1) {
		switch (errno) {
		case EBUSY:
			if (doingall == 0)
				FUNC4("%s: Device already in use", name);
			break;
		case EINVAL:
			if (which_prog == SWAPON)
				FUNC4("%s: NSWAPDEV limit reached", name);
			else if (doingall == 0)
				FUNC3("%s", name);
			break;
		default:
			FUNC3("%s", name);
			break;
		}
		return (NULL);
	}
	return (name);
}