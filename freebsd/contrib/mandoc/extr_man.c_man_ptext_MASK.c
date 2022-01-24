#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct roff_man {int flags; TYPE_1__* last; int /*<<< orphan*/  next; } ;
struct TYPE_2__ {scalar_t__ tok; scalar_t__ type; int /*<<< orphan*/  flags; int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_BLK_BLANK ; 
 int /*<<< orphan*/  MANDOCERR_SPACE_EOL ; 
 int MAN_BLINE ; 
 int MAN_ELINE ; 
 scalar_t__ MAN_SH ; 
 scalar_t__ MAN_SS ; 
 int /*<<< orphan*/  NODE_EOS ; 
 scalar_t__ ROFFT_TEXT ; 
 int /*<<< orphan*/  ROFF_NEXT_SIBLING ; 
 int ROFF_NOFILL ; 
 int /*<<< orphan*/  ROFF_sp ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct roff_man*,int,int,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct roff_man*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct roff_man*,int,int,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(struct roff_man *man, int line, char *buf, int offs)
{
	int		 i;
	char		*ep;

	/* In no-fill mode, whitespace is preserved on text lines. */

	if (man->flags & ROFF_NOFILL) {
		FUNC6(man, line, offs, buf + offs);
		FUNC1(man, line, offs, buf + offs);
		return 1;
	}

	for (i = offs; buf[i] == ' '; i++)
		/* Skip leading whitespace. */ ;

	/*
	 * Blank lines are ignored in next line scope
	 * and right after headings and cancel preceding \c,
	 * but add a single vertical space elsewhere.
	 */

	if (buf[i] == '\0') {
		if (man->flags & (MAN_ELINE | MAN_BLINE)) {
			FUNC4(MANDOCERR_BLK_BLANK, line, 0, NULL);
			return 1;
		}
		if (man->last->tok == MAN_SH || man->last->tok == MAN_SS)
			return 1;
		if (man->last->type == ROFFT_TEXT &&
		    ((ep = FUNC2(man->last->string)) != NULL)) {
			*ep = '\0';
			return 1;
		}
		FUNC5(man, line, offs, ROFF_sp);
		man->next = ROFF_NEXT_SIBLING;
		return 1;
	}

	/*
	 * Warn if the last un-escaped character is whitespace. Then
	 * strip away the remaining spaces (tabs stay!).
	 */

	i = (int)FUNC7(buf);
	FUNC0(i);

	if (' ' == buf[i - 1] || '\t' == buf[i - 1]) {
		if (i > 1 && '\\' != buf[i - 2])
			FUNC4(MANDOCERR_SPACE_EOL, line, i - 1, NULL);

		for (--i; i && ' ' == buf[i]; i--)
			/* Spin back to non-space. */ ;

		/* Jump ahead of escaped whitespace. */
		i += '\\' == buf[i] ? 2 : 1;

		buf[i] = '\0';
	}
	FUNC6(man, line, offs, buf + offs);

	/*
	 * End-of-sentence check.  If the last character is an unescaped
	 * EOS character, then flag the node as being the end of a
	 * sentence.  The front-end will know how to interpret this.
	 */

	FUNC0(i);
	if (FUNC3(buf, (size_t)i))
		man->last->flags |= NODE_EOS;

	FUNC1(man, line, offs, buf + offs);
	return 1;
}