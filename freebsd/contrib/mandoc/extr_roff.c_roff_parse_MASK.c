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
struct roff {int /*<<< orphan*/  rentab; int /*<<< orphan*/  strtab; int /*<<< orphan*/  reqtab; int /*<<< orphan*/  current_string; } ;
typedef  enum roff_tok { ____Placeholder_roff_tok } roff_tok ;

/* Variables and functions */
#define  ROFFDEF_REN 129 
 int ROFFDEF_UNDEF ; 
#define  ROFFDEF_USER 128 
 int ROFF_RENAMED ; 
 int ROFF_USERDEF ; 
 int TOKEN_NONE ; 
 size_t FUNC0 (struct roff*,char**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct roff*,char const*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static enum roff_tok
FUNC4(struct roff *r, char *buf, int *pos, int ln, int ppos)
{
	char		*cp;
	const char	*mac;
	size_t		 maclen;
	int		 deftype;
	enum roff_tok	 t;

	cp = buf + *pos;

	if ('\0' == *cp || '"' == *cp || '\t' == *cp || ' ' == *cp)
		return TOKEN_NONE;

	mac = cp;
	maclen = FUNC0(r, &cp, ln, ppos);

	deftype = ROFFDEF_USER | ROFFDEF_REN;
	r->current_string = FUNC1(r, mac, maclen, &deftype);
	switch (deftype) {
	case ROFFDEF_USER:
		t = ROFF_USERDEF;
		break;
	case ROFFDEF_REN:
		t = ROFF_RENAMED;
		break;
	default:
		t = FUNC3(r->reqtab, mac, maclen);
		break;
	}
	if (t != TOKEN_NONE)
		*pos = cp - buf;
	else if (deftype == ROFFDEF_UNDEF) {
		/* Using an undefined macro defines it to be empty. */
		FUNC2(&r->strtab, mac, maclen, "", 0, 0);
		FUNC2(&r->rentab, mac, maclen, NULL, 0, 0);
	}
	return t;
}