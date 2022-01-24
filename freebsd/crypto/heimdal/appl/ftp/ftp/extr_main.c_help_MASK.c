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
struct cmd {char* c_name; int /*<<< orphan*/  c_help; scalar_t__ c_proxy; } ;

/* Variables and functions */
 char* HELPINDENT ; 
 size_t NCMDS ; 
 struct cmd* cmdtab ; 
 struct cmd* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  proxy ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int FUNC3 (char*) ; 

void
FUNC4(int argc, char **argv)
{
	struct cmd *c;

	if (argc == 1) {
		int i, j, w, k;
		int columns, width = 0, lines;

		FUNC1("Commands may be abbreviated.  Commands are:\n\n");
		for (c = cmdtab; c < &cmdtab[NCMDS]; c++) {
			int len = FUNC3(c->c_name);

			if (len > width)
				width = len;
		}
		width = (width + 8) &~ 7;
		columns = 80 / width;
		if (columns == 0)
			columns = 1;
		lines = (NCMDS + columns - 1) / columns;
		for (i = 0; i < lines; i++) {
			for (j = 0; j < columns; j++) {
				c = cmdtab + j * lines + i;
				if ((!proxy || c->c_proxy)) {
					FUNC1("%s", c->c_name);
				} else {
					for (k=0; k < FUNC3(c->c_name); k++) {
						FUNC2(' ');
					}
				}
				if (c + lines >= &cmdtab[NCMDS]) {
					FUNC1("\n");
					break;
				}
				w = FUNC3(c->c_name);
				while (w < width) {
					w = (w + 8) &~ 7;
					FUNC2('\t');
				}
			}
		}
		return;
	}
	while (--argc > 0) {
		char *arg;
		arg = *++argv;
		c = FUNC0(arg);
		if (c == (struct cmd *)-1)
			FUNC1("?Ambiguous help command %s\n", arg);
		else if (c == (struct cmd *)0)
			FUNC1("?Invalid help command %s\n", arg);
		else
			FUNC1("%-*s\t%s\n", HELPINDENT,
				c->c_name, c->c_help);
	}
}