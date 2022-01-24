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
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*) ; 

int
FUNC3(int argc, char *argv[])
{
	char b[10];
	size_t len = FUNC0(argv[1]);
#ifdef __FreeBSD__
	char c[] = "01234567890123456789";
	c[len] = 0;
	(void)snprintf(b, len, "%s", c);
#else
	(void)FUNC2(b, len, "%s", "0123456789");
#endif
	(void)FUNC1("%s\n", b);
	return 0;
}