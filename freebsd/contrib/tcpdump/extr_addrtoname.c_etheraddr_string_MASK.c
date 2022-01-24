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
typedef  int u_char ;
struct ether_addr {int dummy; } ;
struct enamemem {char const* e_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* ndo_error ) (TYPE_1__*,char*) ;int /*<<< orphan*/  ndo_nflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int BUFSIZE ; 
 int FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (char*,struct ether_addr const*) ; 
 void** hex ; 
 struct enamemem* FUNC2 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  oui_values ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

const char *
FUNC8(netdissect_options *ndo, register const u_char *ep)
{
	register int i;
	register char *cp;
	register struct enamemem *tp;
	int oui;
	char buf[BUFSIZE];

	tp = FUNC2(ndo, ep);
	if (tp->e_name)
		return (tp->e_name);
#ifdef USE_ETHER_NTOHOST
	if (!ndo->ndo_nflag) {
		char buf2[BUFSIZE];

		if (ether_ntohost(buf2, (const struct ether_addr *)ep) == 0) {
			tp->e_name = strdup(buf2);
			if (tp->e_name == NULL)
				(*ndo->ndo_error)(ndo,
						  "etheraddr_string: strdup(buf2)");
			return (tp->e_name);
		}
	}
#endif
	cp = buf;
	oui = FUNC0(ep);
	*cp++ = hex[*ep >> 4 ];
	*cp++ = hex[*ep++ & 0xf];
	for (i = 5; --i >= 0;) {
		*cp++ = ':';
		*cp++ = hex[*ep >> 4 ];
		*cp++ = hex[*ep++ & 0xf];
	}

	if (!ndo->ndo_nflag) {
		FUNC3(cp, BUFSIZE - (2 + 5*3), " (oui %s)",
		    FUNC7(oui_values, "Unknown", oui));
	} else
		*cp = '\0';
	tp->e_name = FUNC4(buf);
	if (tp->e_name == NULL)
		(*ndo->ndo_error)(ndo, "etheraddr_string: strdup(buf)");
	return (tp->e_name);
}