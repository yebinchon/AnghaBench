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
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ **) ; 
 int ERR_AMBIG ; 
 int ERR_NAME ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ noexec ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

Char   *
FUNC6(Char *cp)
{
    Char *Dv[2], **expanded;

    if (noexec)
	return (0);
    Dv[0] = cp;
    Dv[1] = NULL;
    expanded = FUNC0(Dv);
    if (expanded[0] == NULL || expanded[1] != NULL) {
	FUNC2(expanded);
	FUNC3(FUNC4(cp));
	FUNC5(ERR_NAME | ERR_AMBIG);
    }
    cp = FUNC1(expanded[0]);
    FUNC2(expanded);
    return (cp);
}