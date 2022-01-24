#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  str ;
struct TYPE_5__ {scalar_t__ nvp_type; } ;
typedef  TYPE_1__ nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ NV_TYPE_STRING_ARRAY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 int FUNC5 (TYPE_1__*,char**,int,scalar_t__) ; 
 scalar_t__ FUNC6 (char*) ; 

int
FUNC7(nvpair_t *nvp, const char *value)
{
	char *str;

	FUNC1(nvp);
	FUNC2(nvp->nvp_type == NV_TYPE_STRING_ARRAY);
	if (value == NULL) {
		FUNC0(EINVAL);
		return (-1);
	}
	str = FUNC4(value);
	if (str == NULL) {
		return (-1);
	}
	if (FUNC5(nvp, &str, sizeof(str), FUNC6(str) + 1) == -1) {
		FUNC3(str);
		return (-1);
	}
	return (0);
}