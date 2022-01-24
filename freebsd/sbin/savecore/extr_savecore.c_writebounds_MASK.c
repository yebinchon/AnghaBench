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
 int /*<<< orphan*/  LOG_WARNING ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/ * FUNC4 (int,char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC5(int savedirfd, int bounds)
{
	FILE *fp;

	if ((fp = FUNC4(savedirfd, "bounds", O_WRONLY | O_CREAT | O_TRUNC,
	    "w", 0644)) == NULL) {
		FUNC2(LOG_WARNING, "unable to write to bounds file: %m");
		return;
	}

	if (verbose)
		FUNC3("bounds number: %d\n", bounds);

	FUNC1(fp, "%d\n", bounds);
	FUNC0(fp);
}