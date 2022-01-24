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
struct parse {int dummy; } ;
typedef  int /*<<< orphan*/  cset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int FUNC2 (char,char) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 char FUNC8 () ; 
 int /*<<< orphan*/  REG_EBRACK ; 
 int /*<<< orphan*/  REG_ECOLLATE ; 
 int /*<<< orphan*/  REG_ECTYPE ; 
 int /*<<< orphan*/  REG_ERANGE ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct parse*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct parse*,int /*<<< orphan*/ *) ; 
 char FUNC14 (struct parse*) ; 

__attribute__((used)) static void
FUNC15(struct parse *p, cset *cs)
{
	char c;
	char start, finish;
	int i;

	/* classify what we've got */
	switch ((FUNC3()) ? FUNC7() : '\0') {
	case '[':
		c = (FUNC4()) ? FUNC8() : '\0';
		break;
	case '-':
		FUNC11(REG_ERANGE);
		return;			/* NOTE RETURN */
		break;
	default:
		c = '\0';
		break;
	}

	switch (c) {
	case ':':		/* character class */
		FUNC6();
		(void)FUNC9(FUNC3(), REG_EBRACK);
		c = FUNC7();
		(void)FUNC9(c != '-' && c != ']', REG_ECTYPE);
		FUNC12(p, cs);
		(void)FUNC9(FUNC3(), REG_EBRACK);
		(void)FUNC9(FUNC2(':', ']'), REG_ECTYPE);
		break;
	case '=':		/* equivalence class */
		FUNC6();
		(void)FUNC9(FUNC3(), REG_EBRACK);
		c = FUNC7();
		(void)FUNC9(c != '-' && c != ']', REG_ECOLLATE);
		FUNC13(p, cs);
		(void)FUNC9(FUNC3(), REG_EBRACK);
		(void)FUNC9(FUNC2('=', ']'), REG_ECOLLATE);
		break;
	default:		/* symbol, ordinary character, or range */
/* xxx revision needed for multichar stuff */
		start = FUNC14(p);
		if (FUNC10('-') && FUNC4() && FUNC8() != ']') {
			/* range */
			FUNC5();
			if (FUNC1('-'))
				finish = '-';
			else
				finish = FUNC14(p);
		} else
			finish = start;
/* xxx what about signed chars here... */
		(void)FUNC9(start <= finish, REG_ERANGE);
		for (i = start; i <= finish; i++)
			FUNC0(cs, i);
		break;
	}
}