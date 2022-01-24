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
struct roff_man {int flags; int /*<<< orphan*/  mdocmac; } ;
typedef  enum roff_tok { ____Placeholder_roff_tok } roff_tok ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_MACRO_CALL ; 
 int MDOC_CALLABLE ; 
 int MDOC_PARSED ; 
 int MDOC_PHRASEQF ; 
 int TOKEN_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,char*,char const*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct roff_man *mdoc, int from, int line, int ppos, const char *p)
{
	enum roff_tok	 res;

	if (mdoc->flags & MDOC_PHRASEQF) {
		mdoc->flags &= ~MDOC_PHRASEQF;
		return TOKEN_NONE;
	}
	if (from == TOKEN_NONE || FUNC1(from)->flags & MDOC_PARSED) {
		res = FUNC2(mdoc->mdocmac, p, 0);
		if (res != TOKEN_NONE) {
			if (FUNC1(res)->flags & MDOC_CALLABLE)
				return res;
			FUNC0(MANDOCERR_MACRO_CALL, line, ppos, "%s", p);
		}
	}
	return TOKEN_NONE;
}