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
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  EXCMD ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static int
FUNC8(SCR *sp, EXCMD *cmdp)
{
	size_t blen, len;
	char *bp, *cscopes, *p, *t;
	CHAR_T *wp;
	size_t wlen;

	/*
	 * EXTENSION #1:
	 *
	 * If the CSCOPE_DIRS environment variable is set, we treat it as a
	 * list of cscope directories that we're using, similar to the tags
	 * edit option.
	 *
	 * XXX
	 * This should probably be an edit option, although that implies that
	 * we start/stop cscope processes periodically, instead of once when
	 * the editor starts.
	 */
	if ((cscopes = FUNC4("CSCOPE_DIRS")) == NULL)
		return (0);
	len = FUNC6(cscopes);
	FUNC2(sp, bp, blen, len);
	FUNC5(bp, cscopes, len + 1);

	for (cscopes = t = bp; (p = FUNC7(&t, "\t :")) != NULL;)
		if (*p != '\0') {
			FUNC0(sp, p, FUNC6(p) + 1, wp, wlen);
			(void)FUNC3(sp, cmdp, wp);
		}

	FUNC1(sp, bp, blen);
	return (0);
}