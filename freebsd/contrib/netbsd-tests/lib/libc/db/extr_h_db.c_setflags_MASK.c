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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int /*<<< orphan*/  R_CURSOR ; 
 int /*<<< orphan*/  R_FIRST ; 
 int /*<<< orphan*/  R_IAFTER ; 
 int /*<<< orphan*/  R_IBEFORE ; 
 int /*<<< orphan*/  R_LAST ; 
 int /*<<< orphan*/  R_NEXT ; 
 int /*<<< orphan*/  R_NOOVERWRITE ; 
 int /*<<< orphan*/  R_PREV ; 
 int /*<<< orphan*/  R_SETCURSOR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  lineno ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static u_int
FUNC4(char *s)
{
	char *p;

	for (; FUNC1((unsigned char)*s); ++s);
	if (*s == '\n' || *s == '\0')
		return 0;
	if ((p = FUNC2(s, '\n')) != NULL)
		*p = '\0';
	if (!FUNC3(s, "R_CURSOR"))		return R_CURSOR;
	if (!FUNC3(s, "R_FIRST"))		return R_FIRST;
	if (!FUNC3(s, "R_IAFTER")) 		return R_IAFTER;
	if (!FUNC3(s, "R_IBEFORE")) 		return R_IBEFORE;
	if (!FUNC3(s, "R_LAST")) 		return R_LAST;
	if (!FUNC3(s, "R_NEXT")) 		return R_NEXT;
	if (!FUNC3(s, "R_NOOVERWRITE"))	return R_NOOVERWRITE;
	if (!FUNC3(s, "R_PREV"))		return R_PREV;
	if (!FUNC3(s, "R_SETCURSOR"))		return R_SETCURSOR;

	FUNC0(1, "line %zu: %s: unknown flag", lineno, s);
	/* NOTREACHED */
}