#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct hostent {int /*<<< orphan*/  h_name; } ;
struct hnamemem {int addr; char const* name; struct hnamemem* nxt; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* ndo_error ) (TYPE_1__*,char*) ;scalar_t__ ndo_Nflag; int /*<<< orphan*/  ndo_nflag; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int HASHNAMESIZE ; 
 struct hostent* FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * capdns ; 
 int f_localnet ; 
 int f_netmask ; 
 struct hostent* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 struct hnamemem* hnametable ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/  const*,int) ; 
 struct hnamemem* FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (char const*,char) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 

const char *
FUNC9(netdissect_options *ndo, const u_char *ap)
{
	register struct hostent *hp;
	uint32_t addr;
	struct hnamemem *p;

	FUNC3(&addr, ap, sizeof(addr));
	p = &hnametable[addr & (HASHNAMESIZE-1)];
	for (; p->nxt; p = p->nxt) {
		if (p->addr == addr)
			return (p->name);
	}
	p->addr = addr;
	p->nxt = FUNC4(ndo);

	/*
	 * Print names unless:
	 *	(1) -n was given.
	 *      (2) Address is foreign and -f was given. (If -f was not
	 *	    given, f_netmask and f_localnet are 0 and the test
	 *	    evaluates to true)
	 */
	if (!ndo->ndo_nflag &&
	    (addr & f_netmask) == f_localnet) {
#ifdef HAVE_CASPER
		if (capdns != NULL) {
			hp = cap_gethostbyaddr(capdns, (char *)&addr, 4,
			    AF_INET);
		} else
#endif
			hp = FUNC1((char *)&addr, 4, AF_INET);
		if (hp) {
			char *dotp;

			p->name = FUNC6(hp->h_name);
			if (p->name == NULL)
				(*ndo->ndo_error)(ndo,
						  "getname: strdup(hp->h_name)");
			if (ndo->ndo_Nflag) {
				/* Remove domain qualifications */
				dotp = FUNC5(p->name, '.');
				if (dotp)
					*dotp = '\0';
			}
			return (p->name);
		}
	}
	p->name = FUNC6(FUNC2(addr));
	if (p->name == NULL)
		(*ndo->ndo_error)(ndo, "getname: strdup(intoa(addr))");
	return (p->name);
}