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
typedef  int /*<<< orphan*/  mtype_t ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int errno ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 

void
FUNC3(
	SCR *sp,
	mtype_t mtype,
	const char *str,
	const char *fmt)
{
	int nf, sv_errno;
	char *p;

	if (str == NULL) {
		FUNC2(sp, mtype, "%s", fmt);
		return;
	}

	sv_errno = errno;
	p = FUNC1(sp, str, &nf);
	errno = sv_errno;
	FUNC2(sp, mtype, fmt, p);
	if (nf)
		FUNC0(sp, p, 0);
}