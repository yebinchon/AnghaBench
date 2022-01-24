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
struct command {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  STRrepeat ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  disabled_cleanup ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ noexec ; 
 int pintr_disabled ; 
 int /*<<< orphan*/  FUNC6 (struct command*) ; 
 scalar_t__ setintr ; 

void
FUNC7(Char **v, struct command *kp)
{
    int i = 1;

    do {
	i *= FUNC4(v[1]);
	FUNC5(v, 2);
    } while (v[0] != NULL && FUNC0(v[0], STRrepeat) == 0);
    if (noexec)
	i = 1;

    if (setintr) {
	pintr_disabled++;
	FUNC1(&pintr_disabled, disabled_cleanup);
    }
    while (i > 0) {
	if (setintr && pintr_disabled == 1) {
	    FUNC2(&pintr_disabled);
	    pintr_disabled++;
	    FUNC1(&pintr_disabled, disabled_cleanup);
	}
	FUNC6(kp);
	--i;
    }
    if (setintr && pintr_disabled == 1)
        FUNC2(&pintr_disabled);
    FUNC3();
}