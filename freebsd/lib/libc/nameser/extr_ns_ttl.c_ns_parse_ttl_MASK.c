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
typedef  int u_long ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 

int
FUNC5(const char *src, u_long *dst) {
	u_long ttl, tmp;
	int ch, digits, dirty;

	ttl = 0;
	tmp = 0;
	digits = 0;
	dirty = 0;
	while ((ch = *src++) != '\0') {
		if (!FUNC0(ch) || !FUNC3(ch))
			goto einval;
		if (FUNC1(ch)) {
			tmp *= 10;
			tmp += (ch - '0');
			digits++;
			continue;
		}
		if (digits == 0)
			goto einval;
		if (FUNC2(ch))
			ch = FUNC4(ch);
		switch (ch) {
		case 'W':  tmp *= 7;
		case 'D':  tmp *= 24;
		case 'H':  tmp *= 60;
		case 'M':  tmp *= 60;
		case 'S':  break;
		default:   goto einval;
		}
		ttl += tmp;
		tmp = 0;
		digits = 0;
		dirty = 1;
	}
	if (digits > 0) {
		if (dirty)
			goto einval;
		else
			ttl += tmp;
	} else if (!dirty)
		goto einval;
	*dst = ttl;
	return (0);

 einval:
	errno = EINVAL;
	return (-1);
}