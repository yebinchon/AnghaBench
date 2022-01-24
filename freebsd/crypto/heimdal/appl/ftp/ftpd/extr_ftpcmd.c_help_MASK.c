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
struct tab {char* name; int /*<<< orphan*/  help; scalar_t__ implemented; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct tab* FUNC0 (struct tab*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 struct tab* sitetab ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(struct tab *ctab, char *s)
{
	struct tab *c;
	int width, NCMDS;
	char *t;
	char buf[1024];

	if (ctab == sitetab)
		t = "SITE ";
	else
		t = "";
	width = 0, NCMDS = 0;
	for (c = ctab; c->name != NULL; c++) {
		int len = FUNC6(c->name);

		if (len > width)
			width = len;
		NCMDS++;
	}
	width = (width + 8) &~ 7;
	if (s == 0) {
		int i, j, w;
		int columns, lines;

		FUNC1(214, "The following %scommands are recognized %s.",
		    t, "(* =>'s unimplemented)");
		columns = 76 / width;
		if (columns == 0)
			columns = 1;
		lines = (NCMDS + columns - 1) / columns;
		for (i = 0; i < lines; i++) {
		    FUNC5 (buf, "   ", sizeof(buf));
		    for (j = 0; j < columns; j++) {
			c = ctab + j * lines + i;
			FUNC3 (buf + FUNC6(buf),
				  sizeof(buf) - FUNC6(buf),
				  "%s%c",
				  c->name,
				  c->implemented ? ' ' : '*');
			if (c + lines >= &ctab[NCMDS])
			    break;
			w = FUNC6(c->name) + 1;
			while (w < width) {
			    FUNC4 (buf,
					     " ",
					     sizeof(buf));
			    w++;
			}
		    }
		    FUNC1(214, "%s", buf);
		}
		FUNC2(214, "Direct comments to kth-krb-bugs@pdc.kth.se");
		return;
	}
	FUNC7(s);
	c = FUNC0(ctab, s);
	if (c == (struct tab *)0) {
		FUNC2(502, "Unknown command %s.", s);
		return;
	}
	if (c->implemented)
		FUNC2(214, "Syntax: %s%s %s", t, c->name, c->help);
	else
		FUNC2(214, "%s%-*s\t%s; unimplemented.", t, width,
		    c->name, c->help);
}