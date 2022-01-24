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
typedef  int u_short ;
struct hnamemem {int addr; char const* name; struct hnamemem* nxt; } ;
struct TYPE_6__ {scalar_t__ ndo_nflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int HASHNAMESIZE ; 
 struct hnamemem* dnaddrtable ; 
 char const* FUNC0 (TYPE_1__*,int) ; 
 char const* FUNC1 (TYPE_1__*,int) ; 
 struct hnamemem* FUNC2 (TYPE_1__*) ; 

const char *
FUNC3(netdissect_options *ndo, u_short dnaddr)
{
	register struct hnamemem *tp;

	for (tp = &dnaddrtable[dnaddr & (HASHNAMESIZE-1)]; tp->nxt != NULL;
	     tp = tp->nxt)
		if (tp->addr == dnaddr)
			return (tp->name);

	tp->addr = dnaddr;
	tp->nxt = FUNC2(ndo);
	if (ndo->ndo_nflag)
		tp->name = FUNC1(ndo, dnaddr);
	else
		tp->name = FUNC0(ndo, dnaddr);

	return(tp->name);
}