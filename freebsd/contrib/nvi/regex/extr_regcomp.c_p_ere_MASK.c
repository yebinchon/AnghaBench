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
struct parse {scalar_t__ error; } ;
typedef  scalar_t__ sopno ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  OCH_ ; 
 int /*<<< orphan*/  OOR1 ; 
 int /*<<< orphan*/  OOR2 ; 
 int /*<<< orphan*/  O_CH ; 
 char FUNC7 () ; 
 int /*<<< orphan*/  RECLIMIT ; 
 int /*<<< orphan*/  REG_EMPTY ; 
 scalar_t__ REG_ESPACE ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct parse*,size_t) ; 

__attribute__((used)) static void
FUNC13(struct parse *p, int stop, size_t reclimit)
         			/* character this ERE should end at */
{
	char c;
	sopno prevback = 0;
	sopno prevfwd = 0;
	sopno conc;
	int first = 1;		/* is this the first alternative? */

	if (reclimit++ > RECLIMIT || p->error == REG_ESPACE) {
		p->error = REG_ESPACE;
		return;
	}

	for (;;) {
		/* do a bunch of concatenated expressions */
		conc = FUNC4();
		while (FUNC6() && (c = FUNC7()) != '|' && c != stop)
			FUNC12(p, reclimit);
		(void)FUNC8(FUNC4() != conc, REG_EMPTY);	/* require nonempty */

		if (!FUNC2('|'))
			break;		/* NOTE BREAK OUT */

		if (first) {
			FUNC5(OCH_, conc);	/* offset is wrong */
			prevfwd = conc;
			prevback = conc;
			first = 0;
		}
		FUNC1(OOR1, prevback);
		prevback = FUNC10();
		FUNC0(prevfwd);			/* fix previous offset */
		prevfwd = FUNC4();
		FUNC3(OOR2, 0);			/* offset is very wrong */
	}

	if (!first) {		/* tail-end fixups */
		FUNC0(prevfwd);
		FUNC1(O_CH, prevback);
	}

	FUNC11(!FUNC6() || FUNC9(stop));
}