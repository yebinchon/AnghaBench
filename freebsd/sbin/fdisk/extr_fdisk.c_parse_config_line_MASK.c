#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t n_args; TYPE_1__* args; int /*<<< orphan*/  cmd; } ;
struct TYPE_5__ {int /*<<< orphan*/ * arg_str; int /*<<< orphan*/  arg_val; int /*<<< orphan*/  argtype; } ;
typedef  TYPE_2__ CMD ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(char *line, CMD *command)
{
    char	*cp, *end;

    cp = line;
    while (1) {
	FUNC2(command, 0, sizeof(*command));

	while (FUNC1(*cp)) ++cp;
	if (*cp == '\0' || *cp == '#')
	    break;
	command->cmd = *cp++;

	/*
	 * Parse args
	 */
	    while (1) {
	    while (FUNC1(*cp)) ++cp;
	    if (*cp == '\0')
		break;		/* eol */
	    if (*cp == '#')
		break;		/* found comment */
	    if (FUNC0(*cp))
		command->args[command->n_args].argtype = *cp++;
	    end = NULL;
	    command->args[command->n_args].arg_val = FUNC4(cp, &end, 0);
 	    if (cp == end || (!FUNC1(*end) && *end != '\0')) {
 		char ch;
 		end = cp;
 		while (!FUNC1(*end) && *end != '\0') ++end;
 		ch = *end; *end = '\0';
 		command->args[command->n_args].arg_str = FUNC3(cp);
 		*end = ch;
 	    } else
 		command->args[command->n_args].arg_str = NULL;
	    cp = end;
	    command->n_args++;
	}
	break;
    }
}