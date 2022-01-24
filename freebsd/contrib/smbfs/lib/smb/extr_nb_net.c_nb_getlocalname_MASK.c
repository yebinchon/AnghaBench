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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int errno ; 
 scalar_t__ FUNC0 (char*,int) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

int
FUNC3(char *name)
{
	char buf[1024], *cp;

	if (FUNC0(buf, sizeof(buf)) != 0)
		return errno;
	cp = FUNC1(buf, '.');
	if (cp)
		*cp = 0;
	FUNC2(name, buf);
	return 0;
}