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
typedef  int /*<<< orphan*/  SM_FILE_T ;

/* Variables and functions */
 int /*<<< orphan*/  SM_IO_RDONLY_B ; 
 int /*<<< orphan*/  SM_IO_WRONLY_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SM_TIME_DEFAULT ; 
 int /*<<< orphan*/  SmFtStdio ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,int,int) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC7(char *msg, int l)
{
	SM_FILE_T *wfp, *rfp;
	char buf[256];
	size_t n;
	int r, i;
	static char fn[] = "tfget";

	wfp = FUNC5(SmFtStdio, SM_TIME_DEFAULT, fn,
			   SM_IO_WRONLY_B, NULL);
	FUNC0(wfp != NULL);
	for (i = 0; i < l; i++)
	{
		r = FUNC6(wfp, SM_TIME_DEFAULT, msg[i]);
		FUNC0(r >= 0);
	}
	r = FUNC3(wfp, SM_TIME_DEFAULT);
	FUNC0(r == 0);

	rfp = FUNC5(SmFtStdio, SM_TIME_DEFAULT, fn,
			   SM_IO_RDONLY_B, NULL);
	FUNC0(rfp != NULL);
	n = sizeof(buf);
	r = FUNC4(rfp, SM_TIME_DEFAULT, buf, n);
	if (l == 0)
	{
		FUNC0(r == -1);
		FUNC0(errno == 0);
	}
	else
	{
		FUNC0(r == l);
		if (r != l)
			FUNC1(stderr, "buf='%s', in='%s', r=%d, l=%d\n",
				buf, msg, r, l);
	}
	FUNC0(FUNC2(buf, msg, l) == 0);
	r = FUNC3(rfp, SM_TIME_DEFAULT);
	FUNC0(r == 0);
}