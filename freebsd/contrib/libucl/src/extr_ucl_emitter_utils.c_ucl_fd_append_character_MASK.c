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
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char,size_t) ; 
 int FUNC3 (int,unsigned char*,size_t) ; 

__attribute__((used)) static int
FUNC4 (unsigned char c, size_t len, void *ud)
{
	int fd = *(int *)ud;
	unsigned char *buf;

	if (len == 1) {
		return FUNC3 (fd, &c, 1);
	}
	else {
		buf = FUNC1 (len);
		if (buf == NULL) {
			/* Fallback */
			while (len --) {
				if (FUNC3 (fd, &c, 1) == -1) {
					return -1;
				}
			}
		}
		else {
			FUNC2 (buf, c, len);
			if (FUNC3 (fd, buf, len) == -1) {
				FUNC0(buf);
				return -1;
			}
			FUNC0 (buf);
		}
	}

	return 0;
}