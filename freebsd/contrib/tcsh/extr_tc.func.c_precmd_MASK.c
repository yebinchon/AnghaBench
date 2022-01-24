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
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/ * STRprecmd ; 
 int /*<<< orphan*/ * STRunalias ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aliases ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  disabled_cleanup ; 
 int /*<<< orphan*/  pintr_disabled ; 
 int precmd_active ; 
 int /*<<< orphan*/  whyles ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6(void)
{
    pintr_disabled++;
    FUNC3(&pintr_disabled, disabled_cleanup);
    if (precmd_active) {	/* an error must have been caught */
	FUNC2(2, STRunalias, STRprecmd);
	FUNC5("%s", FUNC0(22, 3, "Faulty alias 'precmd' removed.\n"));
	goto leave;
    }
    precmd_active = 1;
    if (!whyles && FUNC1(STRprecmd, &aliases))
	FUNC2(1, STRprecmd, NULL);
leave:
    precmd_active = 0;
    FUNC4(&pintr_disabled);
}