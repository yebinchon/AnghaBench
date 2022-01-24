#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct parse {int dummy; } ;
struct TYPE_3__ {size_t smultis; int /*<<< orphan*/ * multis; } ;
typedef  TYPE_1__ cset ;

/* Variables and functions */
 int /*<<< orphan*/  REG_ESPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5( struct parse *p, cset *cs, const char *cp)
{
	size_t oldend = cs->smultis;
	void *np;

	cs->smultis += FUNC4(cp) + 1;
	np = FUNC3(cs->multis, cs->smultis);
	if (np == NULL) {
		if (cs->multis)
			FUNC1(cs->multis);
		cs->multis = NULL;
		FUNC0(REG_ESPACE);
		return;
	}
	cs->multis = np;

	FUNC2(cs->multis + oldend - 1, cp, cs->smultis - oldend + 1);
}