#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int u_char ;
struct hnamemem {int addr; char const* name; struct hnamemem* nxt; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* ndo_error ) (TYPE_1__*,char*) ;int /*<<< orphan*/  ndo_nflag; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  nambuf ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int HASHNAMESIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 struct hnamemem* hnametable ; 
 void* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,...) ; 
 int FUNC5 (char*,char*,int*,...) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 

__attribute__((used)) static const char *
FUNC10(netdissect_options *ndo,
              u_short atnet, u_char athost)
{
	register struct hnamemem *tp, *tp2;
	register int i = (atnet << 8) | athost;
	char nambuf[256+1];
	static int first = 1;
	FILE *fp;

	/*
	 * if this is the first call, see if there's an AppleTalk
	 * number to name map file.
	 */
	if (first && (first = 0, !ndo->ndo_nflag)
	    && (fp = FUNC2("/etc/atalk.names", "r"))) {
		char line[256];
		int i1, i2;

		while (FUNC1(line, sizeof(line), fp)) {
			if (line[0] == '\n' || line[0] == 0 || line[0] == '#')
				continue;
			if (FUNC5(line, "%d.%d %256s", &i1, &i2, nambuf) == 3)
				/* got a hostname. */
				i2 |= (i1 << 8);
			else if (FUNC5(line, "%d %256s", &i1, nambuf) == 2)
				/* got a net name */
				i2 = (i1 << 8) | 255;
			else
				continue;

			for (tp = &hnametable[i2 & (HASHNAMESIZE-1)];
			     tp->nxt; tp = tp->nxt)
				;
			tp->addr = i2;
			tp->nxt = FUNC3(ndo);
			tp->name = FUNC6(nambuf);
			if (tp->name == NULL)
				(*ndo->ndo_error)(ndo,
						  "ataddr_string: strdup(nambuf)");
		}
		FUNC0(fp);
	}

	for (tp = &hnametable[i & (HASHNAMESIZE-1)]; tp->nxt; tp = tp->nxt)
		if (tp->addr == i)
			return (tp->name);

	/* didn't have the node name -- see if we've got the net name */
	i |= 255;
	for (tp2 = &hnametable[i & (HASHNAMESIZE-1)]; tp2->nxt; tp2 = tp2->nxt)
		if (tp2->addr == i) {
			tp->addr = (atnet << 8) | athost;
			tp->nxt = FUNC3(ndo);
			(void)FUNC4(nambuf, sizeof(nambuf), "%s.%d",
			    tp2->name, athost);
			tp->name = FUNC6(nambuf);
			if (tp->name == NULL)
				(*ndo->ndo_error)(ndo,
						  "ataddr_string: strdup(nambuf)");
			return (tp->name);
		}

	tp->addr = (atnet << 8) | athost;
	tp->nxt = FUNC3(ndo);
	if (athost != 255)
		(void)FUNC4(nambuf, sizeof(nambuf), "%d.%d", atnet, athost);
	else
		(void)FUNC4(nambuf, sizeof(nambuf), "%d", atnet);
	tp->name = FUNC6(nambuf);
	if (tp->name == NULL)
		(*ndo->ndo_error)(ndo, "ataddr_string: strdup(nambuf)");

	return (tp->name);
}