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
typedef  int /*<<< orphan*/  wctype_t ;
typedef  int /*<<< orphan*/  uch ;
struct parse {char* next; } ;
typedef  int /*<<< orphan*/  cset ;
typedef  int /*<<< orphan*/  clname ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parse*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  REG_ECTYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(struct parse *p, cset *cs)
{
	const char *sp = p->next;
	size_t len;
	wctype_t wct;
	char clname[16];

	while (FUNC1() && FUNC5((uch)FUNC3()))
		FUNC2();
	len = p->next - sp;
	if (len >= sizeof(clname) - 1) {
		FUNC4(REG_ECTYPE);
		return;
	}
	FUNC6(clname, sp, len);
	clname[len] = '\0';
	if ((wct = FUNC7(clname)) == 0) {
		FUNC4(REG_ECTYPE);
		return;
	}
	FUNC0(p, cs, wct);
}