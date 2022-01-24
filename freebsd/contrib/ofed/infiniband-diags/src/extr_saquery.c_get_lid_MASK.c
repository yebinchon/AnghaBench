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
typedef  scalar_t__ uint16_t ;
struct sa_handle {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 long UINT16_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC2 (struct sa_handle*,char const*,scalar_t__*) ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC6(struct sa_handle * h, const char *name)
{
	int rc = 0;
	uint16_t rc_lid = 0;

	if (!name)
		return 0;
	if (FUNC3(name[0])) {
		if ((rc = FUNC2(h, name, &rc_lid)) != 0) {
			FUNC1(stderr, "Failed to find lid for \"%s\": %s\n",
				name, FUNC4(rc));
			FUNC0(rc);
		}
	} else {
		long val;
		errno = 0;
		val = FUNC5(name, NULL, 0);
		if (errno != 0 || val <= 0 || val > UINT16_MAX) {
			FUNC1(stderr, "Invalid lid specified: \"%s\"\n", name);
			FUNC0(EINVAL);
		}
		rc_lid = (uint16_t)val;
	}

	return rc_lid;
}