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
struct parse {int /*<<< orphan*/ * next; } ;
struct cclass {char* chars; char* multis; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  cset ;
typedef  int /*<<< orphan*/  RCHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (struct parse*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  REG_ECTYPE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 struct cclass* cclasses ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static void
FUNC10(struct parse *p, cset *cs)
{
	RCHAR_T *sp = p->next;
	struct cclass *cp;
	size_t len;
	const char *u;
	char c;

	while (FUNC3() && FUNC8(FUNC5()))
		FUNC4();
	len = p->next - sp;
	for (cp = cclasses; cp->name != NULL; cp++)
		if (FUNC7(cp->name) == len && !FUNC2(cp->name, sp, len))
			break;
	if (cp->name == NULL) {
		/* oops, didn't find it */
		FUNC6(REG_ECTYPE);
		return;
	}

	u = cp->chars;
	while ((c = *u++) != '\0')
		FUNC0(cs, c);
	for (u = cp->multis; *u != '\0'; u += FUNC9(u) + 1)
		FUNC1(p, cs, u);
}