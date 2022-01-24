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
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC2(const char *opt, int allow_negate, const char **optsp)
{
	size_t opt_len = FUNC0(opt);
	const char *opts = *optsp;
	int negate = 0;

	if (allow_negate && FUNC1(opts, "no-", 3) == 0) {
		opts += 3;
		negate = 1;
	}
	if (FUNC1(opts, opt, opt_len) == 0) {
		*optsp = opts + opt_len;
		return negate ? 0 : 1;
	}
	return -1;
}