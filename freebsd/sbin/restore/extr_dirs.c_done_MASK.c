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
 char* dirfile ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* modefile ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(int exitcode)
{

	FUNC0();
	if (modefile[0] != '#') {
		(void) FUNC2(modefile, 0);
		(void) FUNC3(modefile);
	}
	if (dirfile[0] != '#') {
		(void) FUNC2(dirfile, 0);
		(void) FUNC3(dirfile);
	}
	FUNC1(exitcode);
}