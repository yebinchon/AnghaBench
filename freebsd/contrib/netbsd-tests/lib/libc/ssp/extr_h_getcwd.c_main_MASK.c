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
 int MAXPATHLEN ; 
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

int
FUNC3(int argc, char *argv[])
{
	char b[MAXPATHLEN];
	size_t len = FUNC0(argv[1]);
	(void)FUNC1(b, len);
	(void)FUNC2("%s\n", b);
	return 0;
}