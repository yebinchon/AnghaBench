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
struct parse {char* next; } ;
struct cname {char code; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  REG_EBRACK ; 
 int /*<<< orphan*/  REG_ECOLLATE ; 
 int /*<<< orphan*/  FUNC2 (int,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cname* cnames ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static char			/* value of collating element */
FUNC6(struct parse *p,
    int endc)			/* name ended by endc,']' */
{
	char *sp = p->next;
	struct cname *cp;
	size_t len;

	while (FUNC0() && !FUNC2(endc, ']'))
		FUNC1();
	if (!FUNC0()) {
		FUNC3(REG_EBRACK);
		return(0);
	}
	len = p->next - sp;
	for (cp = cnames; cp->name != NULL; cp++)
		if (FUNC5(cp->name, sp, len) == 0 && FUNC4(cp->name) == len)
			return(cp->code);	/* known name */
	if (len == 1)
		return(*sp);	/* single character */
	FUNC3(REG_ECOLLATE);			/* neither */
	return(0);
}