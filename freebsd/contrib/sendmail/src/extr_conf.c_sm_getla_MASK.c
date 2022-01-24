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
typedef  int /*<<< orphan*/  labuf ;

/* Variables and functions */
 int /*<<< orphan*/  A_TEMP ; 
 int /*<<< orphan*/  CurrentLA ; 
 int /*<<< orphan*/  GlobalMacros ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 

void
FUNC4()
{
	char labuf[8];

	CurrentLA = FUNC0();
	(void) FUNC3(labuf, sizeof(labuf), "%d", CurrentLA);
	FUNC1(&GlobalMacros, A_TEMP, FUNC2("{load_avg}"), labuf);
}