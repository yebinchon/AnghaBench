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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int,char**,size_t*) ; 

__attribute__((used)) static int
FUNC2(size_t len, size_t target, int spaced, char **buf, size_t *buflen) {
	size_t save_buflen = *buflen;
	char *save_buf = *buf;
	int t;

	if (spaced || len >= target - 1) {
		FUNC0(FUNC1("  ", 2, buf, buflen));
		spaced = 1;
	} else {
		for (t = (target - len - 1) / 8; t >= 0; t--)
			if (FUNC1("\t", 1, buf, buflen) < 0) {
				*buflen = save_buflen;
				*buf = save_buf;
				return (-1);
			}
		spaced = 0;
	}
	return (spaced);
}