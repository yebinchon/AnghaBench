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
struct pcap_etherent {char* name; scalar_t__ addr; } ;
struct etherlist {int /*<<< orphan*/ * name; scalar_t__ addr; } ;
struct ether_addr {int dummy; } ;
struct enamemem {int /*<<< orphan*/ * e_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ETHERS_FILE ; 
 scalar_t__ FUNC0 (char*,struct ether_addr const*) ; 
 struct etherlist* etherlist ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct enamemem* FUNC3 (TYPE_1__*,scalar_t__) ; 
 struct pcap_etherent* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 

__attribute__((used)) static void
FUNC8(netdissect_options *ndo)
{
	register const struct etherlist *el;
	register struct enamemem *tp;
#ifdef USE_ETHER_NTOHOST
	char name[256];
#else
	register struct pcap_etherent *ep;
	register FILE *fp;

	/* Suck in entire ethers file */
	fp = FUNC2(PCAP_ETHERS_FILE, "r");
	if (fp != NULL) {
		while ((ep = FUNC4(fp)) != NULL) {
			tp = FUNC3(ndo, ep->addr);
			tp->e_name = FUNC5(ep->name);
			if (tp->e_name == NULL)
				(*ndo->ndo_error)(ndo,
						  "init_etherarray: strdup(ep->addr)");
		}
		(void)FUNC1(fp);
	}
#endif

	/* Hardwire some ethernet names */
	for (el = etherlist; el->name != NULL; ++el) {
		tp = FUNC3(ndo, el->addr);
		/* Don't override existing name */
		if (tp->e_name != NULL)
			continue;

#ifdef USE_ETHER_NTOHOST
		/*
		 * Use YP/NIS version of name if available.
		 */
		if (ether_ntohost(name, (const struct ether_addr *)el->addr) == 0) {
			tp->e_name = strdup(name);
			if (tp->e_name == NULL)
				(*ndo->ndo_error)(ndo,
						  "init_etherarray: strdup(name)");
			continue;
		}
#endif
		tp->e_name = el->name;
	}
}