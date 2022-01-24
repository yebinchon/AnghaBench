#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int c_flags; char* c_name; char* c_desc; int /*<<< orphan*/  (* c_init ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* c_probe ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int C_ACTIVEIN ; 
 int C_ACTIVEOUT ; 
 int C_PRESENTIN ; 
 int C_PRESENTOUT ; 
 int /*<<< orphan*/  EV_VOLATILE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  cons_set ; 
 TYPE_1__** consoles ; 
 int /*<<< orphan*/  env_nounset ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twiddle_set ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10(void)
{
    int			cons;
    int			active;
    char		*prefconsole;

    /* We want a callback to install the new value when this var changes. */
    FUNC1("twiddle_divisor", EV_VOLATILE, "1", twiddle_set, env_nounset);

    /* Do all console probes */
    for (cons = 0; consoles[cons] != NULL; cons++) {
	consoles[cons]->c_flags = 0;
 	consoles[cons]->c_probe(consoles[cons]);
    }
    /* Now find the first working one */
    active = -1;
    for (cons = 0; consoles[cons] != NULL && active == -1; cons++) {
	consoles[cons]->c_flags = 0;
 	consoles[cons]->c_probe(consoles[cons]);
	if (consoles[cons]->c_flags == (C_PRESENTIN | C_PRESENTOUT))
	    active = cons;
    }
    /* Force a console even if all probes failed */
    if (active == -1)
	active = 0;

    /* Check to see if a console preference has already been registered */
    prefconsole = FUNC3("console");
    if (prefconsole != NULL)
	prefconsole = FUNC5(prefconsole);
    if (prefconsole != NULL) {
	FUNC9("console");		/* we want to replace this */
	FUNC0(prefconsole);
    } else {
	consoles[active]->c_flags |= C_ACTIVEIN | C_ACTIVEOUT;
	consoles[active]->c_init(0);
	prefconsole = FUNC5(consoles[active]->c_name);
    }

    FUNC4("Consoles: ");
    for (cons = 0; consoles[cons] != NULL; cons++)
	if (consoles[cons]->c_flags & (C_ACTIVEIN | C_ACTIVEOUT))
	    FUNC4("%s  ", consoles[cons]->c_desc);
    FUNC4("\n");

    if (prefconsole != NULL) {
	FUNC1("console", EV_VOLATILE, prefconsole, cons_set,
	    env_nounset);
	FUNC2(prefconsole);
    }
}