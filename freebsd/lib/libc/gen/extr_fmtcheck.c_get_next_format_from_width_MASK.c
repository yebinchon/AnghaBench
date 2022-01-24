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
typedef  int /*<<< orphan*/  EFT ;

/* Variables and functions */
 int /*<<< orphan*/  FMTCHECK_PRECISION ; 
 int /*<<< orphan*/  FMTCHECK_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char const**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 scalar_t__ FUNC2 (char const) ; 

__attribute__((used)) static EFT
FUNC3(const char **pf)
{
	const char	*f;

	f = *pf;
	if (*f == '.') {
		f++;
		if (*f == '*') {
			FUNC0(pf,f,FMTCHECK_PRECISION);
		}
		/* eat any precision (empty is allowed) */
		while (FUNC2(*f)) f++;
		if (!*f) FUNC0(pf,f,FMTCHECK_UNKNOWN);
	}
	FUNC0(pf,f,FUNC1(pf));
	/*NOTREACHED*/
}