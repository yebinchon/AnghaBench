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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*) ; 

int
FUNC4(int argc, char *argv[])
{
	char b[10];
	char *q = FUNC2(b, argv[1]);

	if ((size_t)(q - b) != FUNC3(argv[1]))
		FUNC0();

	(void)FUNC1("%s\n", b);
	return 0;
}