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
typedef  char eChar ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 char DEOF ; 
 char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_BADMOD ; 
 int /*<<< orphan*/  ERR_BADSUBST ; 
 int INT_MAX ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char) ; 
 int dol_flag_a ; 
 int dolmcnt ; 
 int /*<<< orphan*/  dolmod ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 

__attribute__((used)) static void
FUNC8(void)
{
    eChar c;

    c = FUNC0(0);
    if (c == ':') {
	do {
	    c = FUNC0(0), dolmcnt = 1, dol_flag_a = 0;
	    if (c == 'g' || c == 'a') {
		if (c == 'g')
		    dolmcnt = INT_MAX;
		else
		    dol_flag_a = 1;
		c = FUNC0(0);
	    }
	    if ((c == 'g' && dolmcnt != INT_MAX) || 
		(c == 'a' && dol_flag_a == 0)) {
		if (c == 'g')
		    dolmcnt = INT_MAX;
		else
		    dol_flag_a = 1;
		c = FUNC0(0);
	    }

	    if (c == 's') {	/* [eichin:19910926.0755EST] */
		int delimcnt = 2;
		eChar delim = FUNC0(0);
		FUNC2(&dolmod, (Char) c);
		FUNC2(&dolmod, (Char) delim);

		if (delim == DEOF || !delim || FUNC4(delim)
		    || FUNC1(delim) || FUNC3(" \t\n", delim)) {
		    FUNC5(ERR_BADSUBST);
		    break;
		}	
		while ((c = FUNC0(0)) != DEOF) {
		    FUNC2(&dolmod, (Char) c);
		    if(c == delim) delimcnt--;
		    if(!delimcnt) break;
		}
		if(delimcnt) {
		    FUNC5(ERR_BADSUBST);
		    break;
		}
		continue;
	    }
	    if (!FUNC3("luhtrqxes", c))
		FUNC6(ERR_BADMOD, (int)c);
	    FUNC2(&dolmod, (Char) c);
	    if (c == 'q')
		dolmcnt = INT_MAX;
	}
	while ((c = FUNC0(0)) == ':');
	FUNC7(c);
    }
    else
	FUNC7(c);
}