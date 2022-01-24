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
typedef  int /*<<< orphan*/  i ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(const char *feature)
{
	char *mib;
	size_t len;
	int i;

	if (FUNC0(&mib, "kern.features.%s", feature) < 0)
		return (0);
	len = sizeof(i);
	if (FUNC2(mib, &i, &len, NULL, 0) < 0) {
		FUNC1(mib);
		return (0);
	}
	FUNC1(mib);
	if (len != sizeof(i))
		return (0);
	return (i != 0);
}