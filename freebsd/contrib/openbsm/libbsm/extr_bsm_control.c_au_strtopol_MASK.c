#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ap_policy; int /*<<< orphan*/ * ap_str; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 TYPE_1__* au_polstr ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char**,char*) ; 

int
FUNC4(const char *polstr, int *policy)
{
	char *bufp, *string;
	char *buffer;
	int i, matched;

	*policy = 0;
	buffer = FUNC2(polstr);
	if (buffer == NULL)
		return (-1);

	bufp = buffer;
	while ((string = FUNC3(&bufp, ",")) != NULL) {
		matched = i = 0;

		do {
			if (FUNC1(string, au_polstr[i].ap_str) == 0) {
				*policy |= au_polstr[i].ap_policy;
				matched = 1;
				break;
			}
		} while (NULL != au_polstr[++i].ap_str);

		if (!matched) {
			FUNC0(buffer);
			errno = EINVAL;
			return (-1);
		}
	}
	FUNC0(buffer);
	return (0);
}