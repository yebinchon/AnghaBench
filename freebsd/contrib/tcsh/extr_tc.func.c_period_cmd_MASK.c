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
typedef  int time_t ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/ * STRNULL ; 
 int /*<<< orphan*/ * STRperiodic ; 
 int /*<<< orphan*/  STRtperiod ; 
 int /*<<< orphan*/ * STRunalias ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aliases ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disabled_cleanup ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int periodic_active ; 
 int /*<<< orphan*/  pintr_disabled ; 
 int t_period ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ whyles ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

void
FUNC9(void)
{
    Char *vp;
    time_t  t, interval;

    if (whyles)
	return;
    pintr_disabled++;
    FUNC3(&pintr_disabled, disabled_cleanup);
    if (periodic_active) {	/* an error must have been caught */
	FUNC2(2, STRunalias, STRperiodic);
	FUNC8("%s", FUNC0(22, 6, "Faulty alias 'periodic' removed.\n"));
	goto leave;
    }
    periodic_active = 1;
    if (!whyles && FUNC1(STRperiodic, &aliases)) {
	vp = FUNC7(STRtperiod);
	if (vp == STRNULL) {
	    FUNC2(1, STRperiodic, NULL);
	    goto leave;
	}
	interval = FUNC5(vp);
	(void) FUNC6(&t);
	if (t - t_period >= interval * 60) {
	    t_period = t;
	    FUNC2(1, STRperiodic, NULL);
	}
    }
leave:
    periodic_active = 0;
    FUNC4(&pintr_disabled);
}