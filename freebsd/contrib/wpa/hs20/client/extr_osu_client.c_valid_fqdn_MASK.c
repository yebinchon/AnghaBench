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
 scalar_t__ FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *fqdn)
{
	const char *pos;

	/* TODO: could make this more complete.. */
	if (FUNC0(fqdn, '.') == 0 || FUNC1(fqdn) > 255)
		return 0;
	for (pos = fqdn; *pos; pos++) {
		if (*pos >= 'a' && *pos <= 'z')
			continue;
		if (*pos >= 'A' && *pos <= 'Z')
			continue;
		if (*pos >= '0' && *pos <= '9')
			continue;
		if (*pos == '-' || *pos == '.' || *pos == '_')
			continue;
		return 0;
	}
	return 1;
}