#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* help; int /*<<< orphan*/  (* func ) (int,char**) ;scalar_t__ name; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ SL_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,char**) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 

void
FUNC4 (SL_cmd *cmds, int argc, char **argv)
{
    if(argc == 0) {
	FUNC1(cmds, 1, argv - 1 /* XXX */);
    } else {
	SL_cmd *c = FUNC2 (cmds, argv[0], 0);
 	if(c == NULL) {
	    FUNC0 (stderr, "No such command: %s. "
		     "Try \"help\" for a list of commands\n",
		     argv[0]);
	} else {
	    if(c->func) {
		static char help[] = "--help";
		char *fake[3];
		fake[0] = argv[0];
		fake[1] = help;
		fake[2] = NULL;
		(*c->func)(2, fake);
		FUNC0(stderr, "\n");
	    }
	    if(c->help && *c->help)
		FUNC0 (stderr, "%s\n", c->help);
	    if((++c)->name && c->func == NULL) {
		int f = 0;
		FUNC0 (stderr, "Synonyms:");
		while (c->name && c->func == NULL) {
		    FUNC0 (stderr, "%s%ld", f ? ", " : " ", (c++)->name);
		    f = 1;
		}
		FUNC0 (stderr, "\n");
	    }
	}
    }
}