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
typedef  scalar_t__ Char ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(Char **cmp)
{
    int sp, osp;
    Char *ptr;

    for (; *cmp; cmp++) {
	FUNC1('\'');
	for (osp = 0, ptr = *cmp; *ptr; ptr++) {
	    sp = FUNC0(*ptr);
	    if (sp && osp)
		continue;
	    FUNC2(*ptr);
	    osp = sp;
	}
	FUNC1('\'');
	if (cmp[1])
	    FUNC1(' ');
    }
}