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
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  ExitVal ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2()
{
	ExitVal = EX_USAGE;
# if _FFR_SPOOL_PATH
	mailerr(NULL, "usage: mail.local [-7] [-B] [-b] [-d] [-l] [-s] [-f from|-r from] [-h filename] [-p path] user ...");
# else /* _FFR_SPOOL_PATH */
	FUNC0(NULL, "usage: mail.local [-7] [-B] [-b] [-d] [-l] [-s] [-f from|-r from] [-h filename] user ...");
# endif /* _FFR_SPOOL_PATH */
	FUNC1(ExitVal);
}