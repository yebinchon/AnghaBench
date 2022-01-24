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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int background ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  pidName ; 

__attribute__((used)) static void FUNC5(void)
{
	FILE*	pidFile;

	FUNC0 (0, 0);
	background = 1;

	pidFile = FUNC2 (pidName, "w");
	if (pidFile) {

		FUNC3 (pidFile, "%d\n", FUNC4 ());
		FUNC1 (pidFile);
	}
}