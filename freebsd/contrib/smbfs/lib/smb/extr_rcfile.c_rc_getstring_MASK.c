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
struct rcfile {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct rcfile*,char const*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*,size_t) ; 

int
FUNC4(struct rcfile *rcp, const char *section, const char *key,
	size_t maxlen, char *dest)
{
	char *value;
	int error;

	error = FUNC0(rcp, section, key, &value);
	if (error)
		return error;
	if (FUNC2(value) >= maxlen) {
		FUNC3("line too long for key '%s' in section '%s', max = %zd\n", key, section, maxlen);
		return EINVAL;
	}
	FUNC1(dest, value);
	return 0;
}