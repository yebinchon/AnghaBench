#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_9__ {scalar_t__ raw; } ;
struct be {scalar_t__ type; scalar_t__ asnlen; int id; TYPE_1__ data; } ;
struct TYPE_10__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_2__ netdissect_options ;

/* Variables and functions */
 scalar_t__ BE_PDU ; 
#define  GETBULKREQ 136 
#define  GETNEXTREQ 135 
#define  GETREQ 134 
#define  GETRESP 133 
#define  INFORMREQ 132 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
#define  REPORT 131 
#define  SETREQ 130 
 int SNMP_VERSION_1 ; 
 int SNMP_VERSION_2 ; 
#define  TRAP 129 
#define  V2TRAP 128 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__,struct be*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,struct be*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
          const u_char *np, u_int length, int version)
{
	struct be pdu;
	int count = 0;

	/* PDU (Context) */
	if ((count = FUNC1(ndo, np, length, &pdu)) < 0)
		return;
	if (pdu.type != BE_PDU) {
		FUNC0((ndo, "[no PDU]"));
		return;
	}
	if ((u_int)count < length)
		FUNC0((ndo, "[%d extra after PDU]", length - count));
	if (ndo->ndo_vflag) {
		FUNC0((ndo, "{ "));
	}
	if (FUNC2(ndo, &pdu) < 0)
		return;
	FUNC0((ndo, " "));
	/* descend into PDU */
	length = pdu.asnlen;
	np = (const u_char *)pdu.data.raw;

	if (version == SNMP_VERSION_1 &&
	    (pdu.id == GETBULKREQ || pdu.id == INFORMREQ ||
	     pdu.id == V2TRAP || pdu.id == REPORT)) {
	        FUNC0((ndo, "[v2 PDU in v1 message]"));
		return;
	}

	if (version == SNMP_VERSION_2 && pdu.id == TRAP) {
		FUNC0((ndo, "[v1 PDU in v2 message]"));
		return;
	}

	switch (pdu.id) {
	case TRAP:
		FUNC4(ndo, np, length);
		break;
	case GETREQ:
	case GETNEXTREQ:
	case GETRESP:
	case SETREQ:
	case GETBULKREQ:
	case INFORMREQ:
	case V2TRAP:
	case REPORT:
		FUNC3(ndo, pdu.id, np, length);
		break;
	}

	if (ndo->ndo_vflag) {
		FUNC0((ndo, " } "));
	}
}