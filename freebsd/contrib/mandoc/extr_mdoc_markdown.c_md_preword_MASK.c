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
 int ESC_BOL ; 
 int ESC_EOL ; 
 int ESC_FON ; 
 int MD_Bk ; 
 int MD_Sm ; 
 int MD_br ; 
 int MD_nl ; 
 int MD_nonl ; 
 int MD_sp ; 
 int MD_spc ; 
 int MD_spc_force ; 
 int escflags ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ list_blocks ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char) ; 
 scalar_t__ outcount ; 
 int outflags ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(void)
{
	const char	*cp;

	/*
	 * If a list block is nested inside a code block or a blockquote,
	 * blank lines for paragraph breaks no longer work; instead,
	 * they terminate the list.  Work around this markdown issue
	 * by using mere line breaks instead.
	 */

	if (list_blocks && outflags & MD_sp) {
		outflags &= ~MD_sp;
		outflags |= MD_br;
	}

	/*
	 * End the old line if requested.
	 * Escape whitespace at the end of the markdown line
	 * such that it won't look like an output line break.
	 */

	if (outflags & MD_sp)
		FUNC3('\n');
	else if (outflags & MD_br) {
		FUNC3(' ');
		FUNC3(' ');
	} else if (outflags & MD_nl && escflags & ESC_EOL)
		FUNC1("zwnj");

	/* Start a new line if necessary. */

	if (outflags & (MD_nl | MD_br | MD_sp)) {
		FUNC3('\n');
		for (cp = FUNC2('\0'); *cp != '\0'; cp++) {
			FUNC3(*cp);
			if (*cp == '>')
				FUNC3(' ');
		}
		outflags &= ~(MD_nl | MD_br | MD_sp);
		escflags = ESC_BOL;
		outcount = 0;

	/* Handle horizontal spacing. */

	} else if (outflags & MD_spc) {
		if (outflags & MD_Bk)
			FUNC0("&nbsp;", stdout);
		else
			FUNC3(' ');
		escflags &= ~ESC_FON;
		outcount++;
	}

	outflags &= ~(MD_spc_force | MD_nonl);
	if (outflags & MD_Sm)
		outflags |= MD_spc;
	else
		outflags &= ~MD_spc;
}