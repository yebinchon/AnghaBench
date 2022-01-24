#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* name; char* usage; char* help; int /*<<< orphan*/ * func; } ;
struct TYPE_9__ {char* name; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ SL_cmd ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_3__* FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 

void
FUNC4 (SL_cmd *cmds, int argc, char **argv)
{
    SL_cmd *c, *prev_c;

    if (FUNC0("SLMANDOC")) {
	FUNC1(cmds, NULL);
	return;
    }

    if (argc == 1) {
	prev_c = NULL;
	for (c = cmds; c->name; ++c) {
	    if (c->func) {
		if(prev_c)
		    FUNC2 ("\n\t%s%s", prev_c->usage ? prev_c->usage : "",
			    prev_c->usage ? "\n" : "");
		prev_c = c;
		FUNC2 ("%s", c->name);
	    } else
		FUNC2 (", %s", c->name);
	}
	if(prev_c)
	    FUNC2 ("\n\t%s%s", prev_c->usage ? prev_c->usage : "",
		    prev_c->usage ? "\n" : "");
    } else {
	c = FUNC3 (cmds, argv[1], 0);
	if (c == NULL)
	    FUNC2 ("No such command: %s. "
		    "Try \"help\" for a list of all commands\n",
		    argv[1]);
	else {
	    FUNC2 ("%s\t%s\n", c->name, c->usage);
	    if(c->help && *c->help)
		FUNC2 ("%s\n", c->help);
	    if((++c)->name && c->func == NULL) {
		FUNC2 ("Synonyms:");
		while (c->name && c->func == NULL)
		    FUNC2 ("\t%s", (c++)->name);
		FUNC2 ("\n");
	    }
	}
    }
}