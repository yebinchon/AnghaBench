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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char const*) ; 

int
FUNC4(const char *dn) {
	int ch, escaped = 0;

	/* "." is a valid missing representation */
	if (*dn == '\0')
		return (1);

	/* otherwise <label>.<hostname> */
	while ((ch = *dn++) != '\0') {
		if (!FUNC1(ch))
			return (0);
		if (!escaped && FUNC2(ch))
			break;
		if (escaped)
			escaped = 0;
		else if (FUNC0(ch))
			escaped = 1;
	}
	if (FUNC2(ch))
		return (FUNC3(dn));
	return (0);
}