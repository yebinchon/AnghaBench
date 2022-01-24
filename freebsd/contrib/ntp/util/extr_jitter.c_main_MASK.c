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
typedef  int /*<<< orphan*/  l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double) ; 
 int NBUF ; 
 double average ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,double) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(
	int argc,
	char *argv[]
	)
{
	l_fp tr;
	int i, j;
	double dtemp, gtod[NBUF];

	/*
	 * Force pages into memory
	 */
	for (i = 0; i < NBUF; i ++)
	    gtod[i] = 0;

	/*
	 * Construct gtod array
	 */
	for (i = 0; i < NBUF; i ++) {
		FUNC3(&tr);
		FUNC0(&tr, gtod[i]);
	}

	/*
	 * Write out gtod array for later processing with Matlab
	 */
	average = 0;
	for (i = 0; i < NBUF - 2; i++) {
		gtod[i] = gtod[i + 1] - gtod[i];
		FUNC4("%13.9f\n", gtod[i]);
		average += gtod[i];
	}

	/*
	 * Sort the gtod array and display deciles
	 */
	for (i = 0; i < NBUF - 2; i++) {
		for (j = 0; j <= i; j++) {
			if (gtod[j] > gtod[i]) {
				dtemp = gtod[j];
				gtod[j] = gtod[i];
				gtod[i] = dtemp;
			}
		}
	}
	average = average / (NBUF - 2);
	FUNC2(stderr, "Average %13.9f\n", average);
	FUNC2(stderr, "First rank\n");
	for (i = 0; i < 10; i++)
		FUNC2(stderr, "%2d %13.9f\n", i, gtod[i]);
	FUNC2(stderr, "Last rank\n");
	for (i = NBUF - 12; i < NBUF - 2; i++)
		FUNC2(stderr, "%2d %13.9f\n", i, gtod[i]);
	FUNC1(0);
}