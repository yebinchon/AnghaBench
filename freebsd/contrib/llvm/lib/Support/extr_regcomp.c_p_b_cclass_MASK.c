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
typedef  int /*<<< orphan*/  uch ;
struct parse {char* next; } ;
struct cclass {char* name; char* chars; char* multis; } ;
typedef  int /*<<< orphan*/  cset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (struct parse*,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  REG_ECTYPE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cclass* cclasses ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC9(struct parse *p, cset *cs)
{
	char *sp = p->next;
	struct cclass *cp;
	size_t len;
	const char *u;
	char c;

	while (FUNC2() && FUNC6((uch)FUNC4()))
		FUNC3();
	len = p->next - sp;
	for (cp = cclasses; cp->name != NULL; cp++)
		if (FUNC8(cp->name, sp, len) == 0 && cp->name[len] == '\0')
			break;
	if (cp->name == NULL) {
		/* oops, didn't find it */
		FUNC5(REG_ECTYPE);
		return;
	}

	u = cp->chars;
	while ((c = *u++) != '\0')
		FUNC0(cs, c);
	for (u = cp->multis; *u != '\0'; u += FUNC7(u) + 1)
		FUNC1(p, cs, u);
}