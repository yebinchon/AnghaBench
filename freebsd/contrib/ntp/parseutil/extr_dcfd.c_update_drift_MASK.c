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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (int,int) ; 
 int USECSCALE ; 
 int accum_drift ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int,char,long,long,int /*<<< orphan*/ ) ; 
 int FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(
	     const char *drift_file,
	     long offset,
	     time_t reftime
	     )
{
	FILE *df;

	df = FUNC4(drift_file, "w");
	if (df != NULL)
	{
		int idrift = FUNC1(accum_drift, USECSCALE);
		int fdrift = accum_drift & ((1<<USECSCALE)-1);

		FUNC0("update_drift: drift_comp %ld ", (long int)accum_drift);
		fdrift = (fdrift * 1000) / (1<<USECSCALE);
		FUNC5(df, "%4d.%03d %c%ld.%06ld %.24s\n", idrift, fdrift,
			(offset < 0) ? '-' : '+', (long int)(FUNC6(offset) / 1000000),
			(long int)(FUNC6(offset) % 1000000), FUNC2(FUNC7(&reftime)));
		FUNC3(df);
		FUNC0("update_drift: %d.%03d ppm ", idrift, fdrift);
	}
}