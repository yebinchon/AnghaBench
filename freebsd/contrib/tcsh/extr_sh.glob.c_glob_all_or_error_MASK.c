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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int ERR_NAME ; 
 int ERR_NOMATCH ; 
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 

Char **
FUNC5(Char **v)
{
    int gflag;

    gflag = FUNC3(v);
    if (gflag) {
	v = FUNC0(v, gflag);
	if (v == NULL)
	    FUNC2(ERR_NAME | ERR_NOMATCH);
    } else {
	v = FUNC1(v);
	FUNC4(v);
    }
    return v;
}