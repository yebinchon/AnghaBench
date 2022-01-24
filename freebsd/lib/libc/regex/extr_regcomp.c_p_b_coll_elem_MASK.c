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
typedef  int /*<<< orphan*/  wint_t ;
typedef  int /*<<< orphan*/  wchar_t ;
struct parse {char* next; } ;
struct cname {int /*<<< orphan*/  code; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbs ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  REG_EBRACK ; 
 int /*<<< orphan*/  REG_ECOLLATE ; 
 int /*<<< orphan*/  REG_ILLSEQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cname* cnames ; 
 size_t FUNC4 (int /*<<< orphan*/ *,char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static wint_t			/* value of collating element */
FUNC8(struct parse *p,
	wint_t endc)		/* name ended by endc,']' */
{
	const char *sp = p->next;
	struct cname *cp;
	mbstate_t mbs;
	wchar_t wc;
	size_t clen, len;

	while (FUNC0() && !FUNC2(endc, ']'))
		FUNC1();
	if (!FUNC0()) {
		FUNC3(REG_EBRACK);
		return(0);
	}
	len = p->next - sp;
	for (cp = cnames; cp->name != NULL; cp++)
		if (FUNC7(cp->name, sp, len) == 0 && FUNC6(cp->name) == len)
			return(cp->code);	/* known name */
	FUNC5(&mbs, 0, sizeof(mbs));
	if ((clen = FUNC4(&wc, sp, len, &mbs)) == len)
		return (wc);			/* single character */
	else if (clen == (size_t)-1 || clen == (size_t)-2)
		FUNC3(REG_ILLSEQ);
	else
		FUNC3(REG_ECOLLATE);		/* neither */
	return(0);
}