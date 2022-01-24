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
struct tbl_node {int dummy; } ;
struct tbl_cell {int vert; int /*<<< orphan*/  flags; int /*<<< orphan*/  wstr; int /*<<< orphan*/  spacing; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_FT_BAD ; 
 int /*<<< orphan*/  MANDOCERR_TBLLAYOUT_CHAR ; 
 int /*<<< orphan*/  MANDOCERR_TBLLAYOUT_MOD ; 
 int /*<<< orphan*/  MANDOCERR_TBLLAYOUT_PAR ; 
 int /*<<< orphan*/  MANDOCERR_TBLLAYOUT_VERT ; 
 int /*<<< orphan*/  TBL_CELL_BALIGN ; 
 int /*<<< orphan*/  TBL_CELL_BOLD ; 
 int /*<<< orphan*/  TBL_CELL_EQUAL ; 
 int /*<<< orphan*/  TBL_CELL_ITALIC ; 
 int /*<<< orphan*/  TBL_CELL_TALIGN ; 
 int /*<<< orphan*/  TBL_CELL_UP ; 
 int /*<<< orphan*/  TBL_CELL_WIGN ; 
 int /*<<< orphan*/  TBL_CELL_WMAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char const) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char**,int) ; 
 int FUNC6 (unsigned char) ; 

__attribute__((used)) static void
FUNC7(struct tbl_node *tbl, struct tbl_cell *cp,
		int ln, const char *p, int *pos)
{
	char		*endptr;
	size_t		 sz;

mod:
	while (p[*pos] == ' ' || p[*pos] == '\t')
		(*pos)++;

	/* Row delimiters and cell specifiers end modifier lists. */

	if (FUNC4(".,-=^_ACLNRSaclnrs", p[*pos]) != NULL)
		return;

	/* Throw away parenthesised expression. */

	if ('(' == p[*pos]) {
		(*pos)++;
		while (p[*pos] && ')' != p[*pos])
			(*pos)++;
		if (')' == p[*pos]) {
			(*pos)++;
			goto mod;
		}
		FUNC2(MANDOCERR_TBLLAYOUT_PAR, ln, *pos, NULL);
		return;
	}

	/* Parse numerical spacing from modifier string. */

	if (FUNC1((unsigned char)p[*pos])) {
		cp->spacing = FUNC5(p + *pos, &endptr, 10);
		*pos = endptr - p;
		goto mod;
	}

	switch (FUNC6((unsigned char)p[(*pos)++])) {
	case 'b':
		cp->flags |= TBL_CELL_BOLD;
		goto mod;
	case 'd':
		cp->flags |= TBL_CELL_BALIGN;
		goto mod;
	case 'e':
		cp->flags |= TBL_CELL_EQUAL;
		goto mod;
	case 'f':
		break;
	case 'i':
		cp->flags |= TBL_CELL_ITALIC;
		goto mod;
	case 'm':
		FUNC2(MANDOCERR_TBLLAYOUT_MOD, ln, *pos, "m");
		goto mod;
	case 'p':
	case 'v':
		if (p[*pos] == '-' || p[*pos] == '+')
			(*pos)++;
		while (FUNC1((unsigned char)p[*pos]))
			(*pos)++;
		goto mod;
	case 't':
		cp->flags |= TBL_CELL_TALIGN;
		goto mod;
	case 'u':
		cp->flags |= TBL_CELL_UP;
		goto mod;
	case 'w':
		sz = 0;
		if (p[*pos] == '(') {
			(*pos)++;
			while (p[*pos + sz] != '\0' && p[*pos + sz] != ')')
				sz++;
		} else
			while (FUNC1((unsigned char)p[*pos + sz]))
				sz++;
		if (sz) {
			FUNC0(cp->wstr);
			cp->wstr = FUNC3(p + *pos, sz);
			*pos += sz;
			if (p[*pos] == ')')
				(*pos)++;
		}
		goto mod;
	case 'x':
		cp->flags |= TBL_CELL_WMAX;
		goto mod;
	case 'z':
		cp->flags |= TBL_CELL_WIGN;
		goto mod;
	case '|':
		if (cp->vert < 2)
			cp->vert++;
		else
			FUNC2(MANDOCERR_TBLLAYOUT_VERT,
			    ln, *pos - 1, NULL);
		goto mod;
	default:
		FUNC2(MANDOCERR_TBLLAYOUT_CHAR,
		    ln, *pos - 1, "%c", p[*pos - 1]);
		goto mod;
	}

	/* Ignore parenthised font names for now. */

	if (p[*pos] == '(')
		goto mod;

	/* Support only one-character font-names for now. */

	if (p[*pos] == '\0' || (p[*pos + 1] != ' ' && p[*pos + 1] != '.')) {
		FUNC2(MANDOCERR_FT_BAD,
		    ln, *pos, "TS %s", p + *pos - 1);
		if (p[*pos] != '\0')
			(*pos)++;
		if (p[*pos] != '\0')
			(*pos)++;
		goto mod;
	}

	switch (p[(*pos)++]) {
	case '3':
	case 'B':
		cp->flags |= TBL_CELL_BOLD;
		goto mod;
	case '2':
	case 'I':
		cp->flags |= TBL_CELL_ITALIC;
		goto mod;
	case '1':
	case 'R':
		goto mod;
	default:
		FUNC2(MANDOCERR_FT_BAD,
		    ln, *pos - 1, "TS f%c", p[*pos - 1]);
		goto mod;
	}
}