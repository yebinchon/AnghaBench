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
 int BUFSIZ ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 char* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3 (char **buf)
{
	int size = BUFSIZ, remain, ret;
	char *p;

	*buf = FUNC0 (size);
	if (*buf == NULL) {
		return -1;
	}

	p = *buf;
	remain = size;

	while ((ret = FUNC1 (STDIN_FILENO, p, remain - 1)) > 0) {
		remain -= ret;
		p += ret;

		if (remain <= 1) {
			*buf = FUNC2 (*buf, size * 2);
			if (*buf == NULL) {
				return -1;
			}

			p = *buf + size - 1;
			remain = size + 1;
			size *= 2;
		}
	}

	*p = '\0';

	return ret;
}