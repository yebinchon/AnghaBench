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
struct req {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(const struct req *req, const char *file)
{
	FILE		*f;
	char		*p;
	size_t		 sz;
	ssize_t		 len;
	int		 i;
	int		 italic, bold;

	if ((f = FUNC1(file, "r")) == NULL) {
		FUNC7("<p>You specified an invalid manual file.</p>");
		return;
	}

	FUNC7("<div class=\"catman\">\n"
	     "<pre>");

	p = NULL;
	sz = 0;

	while ((len = FUNC3(&p, &sz, f)) != -1) {
		bold = italic = 0;
		for (i = 0; i < len - 1; i++) {
			/*
			 * This means that the catpage is out of state.
			 * Ignore it and keep going (although the
			 * catpage is bogus).
			 */

			if ('\b' == p[i] || '\n' == p[i])
				continue;

			/*
			 * Print a regular character.
			 * Close out any bold/italic scopes.
			 * If we're in back-space mode, make sure we'll
			 * have something to enter when we backspace.
			 */

			if ('\b' != p[i + 1]) {
				if (italic)
					FUNC5("</i>");
				if (bold)
					FUNC5("</b>");
				italic = bold = 0;
				FUNC4(p[i]);
				continue;
			} else if (i + 2 >= len)
				continue;

			/* Italic mode. */

			if ('_' == p[i]) {
				if (bold)
					FUNC5("</b>");
				if ( ! italic)
					FUNC5("<i>");
				bold = 0;
				italic = 1;
				i += 2;
				FUNC4(p[i]);
				continue;
			}

			/*
			 * Handle funny behaviour troff-isms.
			 * These grok'd from the original man2html.c.
			 */

			if (('+' == p[i] && 'o' == p[i + 2]) ||
					('o' == p[i] && '+' == p[i + 2]) ||
					('|' == p[i] && '=' == p[i + 2]) ||
					('=' == p[i] && '|' == p[i + 2]) ||
					('*' == p[i] && '=' == p[i + 2]) ||
					('=' == p[i] && '*' == p[i + 2]) ||
					('*' == p[i] && '|' == p[i + 2]) ||
					('|' == p[i] && '*' == p[i + 2]))  {
				if (italic)
					FUNC5("</i>");
				if (bold)
					FUNC5("</b>");
				italic = bold = 0;
				FUNC6('*');
				i += 2;
				continue;
			} else if (('|' == p[i] && '-' == p[i + 2]) ||
					('-' == p[i] && '|' == p[i + 1]) ||
					('+' == p[i] && '-' == p[i + 1]) ||
					('-' == p[i] && '+' == p[i + 1]) ||
					('+' == p[i] && '|' == p[i + 1]) ||
					('|' == p[i] && '+' == p[i + 1]))  {
				if (italic)
					FUNC5("</i>");
				if (bold)
					FUNC5("</b>");
				italic = bold = 0;
				FUNC6('+');
				i += 2;
				continue;
			}

			/* Bold mode. */

			if (italic)
				FUNC5("</i>");
			if ( ! bold)
				FUNC5("<b>");
			bold = 1;
			italic = 0;
			i += 2;
			FUNC4(p[i]);
		}

		/*
		 * Clean up the last character.
		 * We can get to a newline; don't print that.
		 */

		if (italic)
			FUNC5("</i>");
		if (bold)
			FUNC5("</b>");

		if (i == len - 1 && p[i] != '\n')
			FUNC4(p[i]);

		FUNC6('\n');
	}
	FUNC2(p);

	FUNC7("</pre>\n"
	     "</div>");

	FUNC0(f);
}