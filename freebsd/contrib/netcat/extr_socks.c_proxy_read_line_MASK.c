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
 int FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  read ; 

__attribute__((used)) static int
FUNC3(int fd, char *buf, size_t bufsz)
{
	size_t off;

	for(off = 0;;) {
		if (off >= bufsz)
			FUNC2(1, "proxy read too long");
		if (FUNC0(read, fd, buf + off, 1) != 1)
			FUNC1(1, "proxy read");
		/* Skip CR */
		if (buf[off] == '\r')
			continue;
		if (buf[off] == '\n') {
			buf[off] = '\0';
			break;
		}
		off++;
	}
	return (off);
}