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
struct limits {scalar_t__ limconst; int /*<<< orphan*/  limname; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int ERR_AMBIG ; 
 int ERR_LIMIT ; 
 int ERR_NAME ; 
 struct limits* limits ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct limits *
FUNC3(Char *cp)
{
    struct limits *lp, *res;

    res = NULL;
    for (lp = limits; lp->limconst >= 0; lp++)
	if (FUNC0(cp, FUNC2(lp->limname))) {
	    if (res)
		FUNC1(ERR_NAME | ERR_AMBIG);
	    res = lp;
	}
    if (res)
	return (res);
    FUNC1(ERR_NAME | ERR_LIMIT);
    /* NOTREACHED */
    return (0);
}