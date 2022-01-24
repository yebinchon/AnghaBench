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
 int GLOBSPACE ; 
 char* FUNC0 (char const*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  blk_indirect_cleanup ; 
 int /*<<< orphan*/  FUNC2 (char***,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char***) ; 
 int /*<<< orphan*/  FUNC4 (char***,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (char const*,char*,char const**,int) ; 
 void* FUNC6 (int) ; 

int
FUNC7(const Char *string, const Char *pattern, const Char **endstr)
{
    Char ***fblk, **p;
    const Char *tstring = string;
    int	   gpol = 1, gres = 0;

    if (*pattern == '^') {
	gpol = 0;
	pattern++;
    }

    fblk = FUNC6(sizeof(Char ***));
    *fblk = FUNC6(GLOBSPACE * sizeof(Char *));
    (*fblk)[0] = FUNC1(pattern);
    (*fblk)[1] = NULL;

    FUNC2(fblk, blk_indirect_cleanup);
    FUNC4(fblk, NULL, GLOBSPACE);

    if (endstr == NULL)
	/* Exact matches only */
	for (p = *fblk; *p; p++) 
	    gres |= FUNC5(string, *p, &tstring, 1) == 2 ? 1 : 0;
    else {
	const Char *end;

	/* partial matches */
        end = FUNC0(string);
	for (p = *fblk; *p; p++)
	    if (FUNC5(string, *p, &tstring, 1) != 0) {
		gres |= 1;
		if (end > tstring)
		    end = tstring;
	    }
	*endstr = end;
    }

    FUNC3(fblk);
    return(gres == gpol);
}