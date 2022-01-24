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
 size_t PROF_DUMP_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * prof_dump_buf ; 
 size_t prof_dump_buf_end ; 
 scalar_t__ FUNC2 (int) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static bool
FUNC4(bool propagate_err, const char *s) {
	size_t i, slen, n;

	FUNC0(config_prof);

	i = 0;
	slen = FUNC3(s);
	while (i < slen) {
		/* Flush the buffer if it is full. */
		if (prof_dump_buf_end == PROF_DUMP_BUFSIZE) {
			if (FUNC2(propagate_err) && propagate_err) {
				return true;
			}
		}

		if (prof_dump_buf_end + slen <= PROF_DUMP_BUFSIZE) {
			/* Finish writing. */
			n = slen - i;
		} else {
			/* Write as much of s as will fit. */
			n = PROF_DUMP_BUFSIZE - prof_dump_buf_end;
		}
		FUNC1(&prof_dump_buf[prof_dump_buf_end], &s[i], n);
		prof_dump_buf_end += n;
		i += n;
	}

	return false;
}