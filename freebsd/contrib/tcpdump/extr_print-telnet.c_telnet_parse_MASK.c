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
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
#define  DO 134 
#define  DONT 133 
 int /*<<< orphan*/  FUNC0 (int,int const*,int) ; 
 int IAC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int NTELOPTS ; 
#define  SB 132 
 int const SE ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int TELCMD_FIRST ; 
#define  TELOPT_AUTHENTICATION 131 
#define  TELOPT_ENCRYPT 130 
#define  WILL 129 
#define  WONT 128 
 int /*<<< orphan*/  authcmd ; 
 int /*<<< orphan*/  authtype ; 
 int /*<<< orphan*/  cmds ; 
 int /*<<< orphan*/  enccmd ; 
 int /*<<< orphan*/  enctype ; 
 int /*<<< orphan*/ * telcmds ; 
 int /*<<< orphan*/ * telopts ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo, const u_char *sp, u_int length, int print)
{
	int i, x;
	u_int c;
	const u_char *osp, *p;
#define FETCH(c, sp, length) \
	do { \
		if (length < 1) \
			goto pktend; \
		ND_TCHECK(*sp); \
		c = *sp++; \
		length--; \
	} while (0)

	osp = sp;

	FETCH(c, sp, length);
	if (c != IAC)
		goto pktend;
	FETCH(c, sp, length);
	if (c == IAC) {		/* <IAC><IAC>! */
		if (print)
			FUNC1((ndo, "IAC IAC"));
		goto done;
	}

	i = c - TELCMD_FIRST;
	if (i < 0 || i > IAC - TELCMD_FIRST)
		goto pktend;

	switch (c) {
	case DONT:
	case DO:
	case WONT:
	case WILL:
	case SB:
		/* DONT/DO/WONT/WILL x */
		FETCH(x, sp, length);
		if (x >= 0 && x < NTELOPTS) {
			if (print)
				FUNC1((ndo, "%s %s", telcmds[i], telopts[x]));
		} else {
			if (print)
				FUNC1((ndo, "%s %#x", telcmds[i], x));
		}
		if (c != SB)
			break;
		/* IAC SB .... IAC SE */
		p = sp;
		while (length > (u_int)(p + 1 - sp)) {
			FUNC3(*p, 2);
			if (p[0] == IAC && p[1] == SE)
				break;
			p++;
		}
		FUNC2(*p);
		if (*p != IAC)
			goto pktend;

		switch (x) {
		case TELOPT_AUTHENTICATION:
			if (p <= sp)
				break;
			FETCH(c, sp, length);
			if (print)
				FUNC1((ndo, " %s", FUNC4(c, authcmd)));
			if (p <= sp)
				break;
			FETCH(c, sp, length);
			if (print)
				FUNC1((ndo, " %s", FUNC4(c, authtype)));
			break;
		case TELOPT_ENCRYPT:
			if (p <= sp)
				break;
			FETCH(c, sp, length);
			if (print)
				FUNC1((ndo, " %s", FUNC4(c, enccmd)));
			if (p <= sp)
				break;
			FETCH(c, sp, length);
			if (print)
				FUNC1((ndo, " %s", FUNC4(c, enctype)));
			break;
		default:
			if (p <= sp)
				break;
			FETCH(c, sp, length);
			if (print)
				FUNC1((ndo, " %s", FUNC4(c, cmds)));
			break;
		}
		while (p > sp) {
			FETCH(x, sp, length);
			if (print)
				FUNC1((ndo, " %#x", x));
		}
		/* terminating IAC SE */
		if (print)
			FUNC1((ndo, " SE"));
		sp += 2;
		break;
	default:
		if (print)
			FUNC1((ndo, "%s", telcmds[i]));
		goto done;
	}

done:
	return sp - osp;

trunc:
	FUNC1((ndo, "%s", tstr));
pktend:
	return -1;
#undef FETCH
}