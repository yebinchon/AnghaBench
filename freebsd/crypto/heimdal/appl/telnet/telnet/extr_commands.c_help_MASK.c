#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; char* help; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 char* HELPINDENT ; 
 TYPE_1__* cmdtab ; 
 TYPE_1__* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(int argc, char **argv)
{
	Command *c;

	if (argc == 1) {
		FUNC2("Commands may be abbreviated.  Commands are:\r\n\r\n");
		for (c = cmdtab; c->name; c++)
			if (c->help) {
				FUNC2("%-*s\t%s\r\n", HELPINDENT, c->name,
								    c->help);
			}
		return 0;
	}
	while (--argc > 0) {
		char *arg;
		arg = *++argv;
		c = FUNC1(arg);
		if (FUNC0(c))
			FUNC2("?Ambiguous help command %s\r\n", arg);
		else if (c == (Command *)0)
			FUNC2("?Invalid help command %s\r\n", arg);
		else
			FUNC2("%s\r\n", c->help);
	}
	return 0;
}