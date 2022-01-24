#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_short ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_8__ {int integer; } ;
struct be {scalar_t__ type; TYPE_1__ data; } ;
struct TYPE_9__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_2__ netdissect_options ;

/* Variables and functions */
 scalar_t__ BE_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ GETBULKREQ ; 
 scalar_t__ GETNEXTREQ ; 
 scalar_t__ GETREQ ; 
 scalar_t__ INFORMREQ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ REPORT ; 
 scalar_t__ SETREQ ; 
 scalar_t__ V2TRAP ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,int,struct be*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct be*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
              u_short pduid, const u_char *np, u_int length)
{
	struct be elem;
	int count = 0, error_status;

	/* reqId (Integer) */
	if ((count = FUNC2(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INT) {
		FUNC1((ndo, "[reqId!=INT]"));
		FUNC3(ndo, &elem);
		return;
	}
	if (ndo->ndo_vflag)
		FUNC1((ndo, "R=%d ", elem.data.integer));
	length -= count;
	np += count;

	/* errorStatus (Integer) */
	if ((count = FUNC2(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INT) {
		FUNC1((ndo, "[errorStatus!=INT]"));
		FUNC3(ndo, &elem);
		return;
	}
	error_status = 0;
	if ((pduid == GETREQ || pduid == GETNEXTREQ || pduid == SETREQ
	    || pduid == INFORMREQ || pduid == V2TRAP || pduid == REPORT)
	    && elem.data.integer != 0) {
		char errbuf[20];
		FUNC1((ndo, "[errorStatus(%s)!=0]",
			FUNC0(elem.data.integer)));
	} else if (pduid == GETBULKREQ) {
		FUNC1((ndo, " N=%d", elem.data.integer));
	} else if (elem.data.integer != 0) {
		char errbuf[20];
		FUNC1((ndo, " %s", FUNC0(elem.data.integer)));
		error_status = elem.data.integer;
	}
	length -= count;
	np += count;

	/* errorIndex (Integer) */
	if ((count = FUNC2(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INT) {
		FUNC1((ndo, "[errorIndex!=INT]"));
		FUNC3(ndo, &elem);
		return;
	}
	if ((pduid == GETREQ || pduid == GETNEXTREQ || pduid == SETREQ
	    || pduid == INFORMREQ || pduid == V2TRAP || pduid == REPORT)
	    && elem.data.integer != 0)
		FUNC1((ndo, "[errorIndex(%d)!=0]", elem.data.integer));
	else if (pduid == GETBULKREQ)
		FUNC1((ndo, " M=%d", elem.data.integer));
	else if (elem.data.integer != 0) {
		if (!error_status)
			FUNC1((ndo, "[errorIndex(%d) w/o errorStatus]", elem.data.integer));
		else
			FUNC1((ndo, "@%d", elem.data.integer));
	} else if (error_status) {
		FUNC1((ndo, "[errorIndex==0]"));
	}
	length -= count;
	np += count;

	FUNC4(ndo, pduid, np, length);
	return;
}