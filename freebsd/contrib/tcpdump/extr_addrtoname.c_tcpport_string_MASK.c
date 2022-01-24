#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_short ;
struct hnamemem {int addr; char const* name; struct hnamemem* nxt; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int HASHNAMESIZE ; 
 struct hnamemem* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 char const* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 struct hnamemem* tporttable ; 

const char *
FUNC4(netdissect_options *ndo, u_short port)
{
	register struct hnamemem *tp;
	register uint32_t i = port;
	char buf[sizeof("00000")];

	for (tp = &tporttable[i & (HASHNAMESIZE-1)]; tp->nxt; tp = tp->nxt)
		if (tp->addr == i)
			return (tp->name);

	tp->addr = i;
	tp->nxt = FUNC0(ndo);

	(void)FUNC1(buf, sizeof(buf), "%u", i);
	tp->name = FUNC2(buf);
	if (tp->name == NULL)
		(*ndo->ndo_error)(ndo, "tcpport_string: strdup(buf)");
	return (tp->name);
}