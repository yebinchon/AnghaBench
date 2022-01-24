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

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ gottoprec ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/ * toprec ; 
 scalar_t__ topreclen ; 

int
FUNC4(const char *ent)
{
	if (ent == NULL) {
		if (toprec)
			FUNC0(toprec);
                toprec = NULL;
                topreclen = 0;
                return (0);
        }
        topreclen = FUNC3(ent);
        if ((toprec = FUNC1 (topreclen + 1)) == NULL) {
		errno = ENOMEM;
                return (-1);
	}
	gottoprec = 0;
        (void)FUNC2(toprec, ent);
        return (0);
}