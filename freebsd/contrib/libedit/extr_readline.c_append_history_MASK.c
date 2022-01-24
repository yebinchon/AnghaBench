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
typedef  int /*<<< orphan*/  HistEvent ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  H_NSAVE_FP ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/ * e ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/ * h ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int n, const char *filename)
{
	HistEvent ev;
	FILE *fp;

	if (h == NULL || e == NULL)
		FUNC4();
	if (filename == NULL && (filename = FUNC0()) == NULL)
		return errno;

	if ((fp = FUNC2(filename, "a")) == NULL)
		return errno;

	if (FUNC3(h, &ev, H_NSAVE_FP, (size_t)n,  fp) == -1) {
		int serrno = errno ? errno : EINVAL;
		FUNC1(fp);
		return serrno;
	}
	FUNC1(fp);
	return 0;
}