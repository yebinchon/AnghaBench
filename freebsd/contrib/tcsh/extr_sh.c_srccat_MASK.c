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
typedef  char Char ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ mflag ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static int
FUNC6(Char *cp, Char *dp)
{
    if (cp[0] == '/' && cp[1] == '\0') 
	return FUNC5(FUNC4(dp), (mflag ? 0 : 1), 0, NULL);
    else {
	Char *ep;
	char   *ptr;
	int rv;

#ifdef WINNT_NATIVE
	ep = Strend(cp);
	if (ep != cp && ep[-1] == '/' && dp[0] == '/') /* silly win95 */
	    dp++;
#endif /* WINNT_NATIVE */

	ep = FUNC1(cp, dp);
	FUNC2(ep, xfree);
	ptr = FUNC4(ep);

	rv = FUNC5(ptr, (mflag ? 0 : 1), 0, NULL);
	FUNC3(ep);
	return rv;
    }
}