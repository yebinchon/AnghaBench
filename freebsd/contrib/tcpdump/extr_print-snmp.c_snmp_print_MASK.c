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
struct TYPE_9__ {int integer; scalar_t__ raw; } ;
struct be {scalar_t__ type; scalar_t__ asnlen; TYPE_1__ data; } ;
struct TYPE_10__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_2__ netdissect_options ;

/* Variables and functions */
 scalar_t__ BE_INT ; 
 scalar_t__ BE_SEQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
#define  SNMP_VERSION_1 130 
#define  SNMP_VERSION_2 129 
#define  SNMP_VERSION_3 128 
 int /*<<< orphan*/ * SnmpVersion ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__,struct be*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct be*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__) ; 

void
FUNC5(netdissect_options *ndo,
           const u_char *np, u_int length)
{
	struct be elem;
	int count = 0;
	int version = 0;

	FUNC0((ndo, " "));

	/* initial Sequence */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_SEQ) {
		FUNC0((ndo, "[!init SEQ]"));
		FUNC2(ndo, &elem);
		return;
	}
	if ((u_int)count < length)
		FUNC0((ndo, "[%d extra after iSEQ]", length - count));
	/* descend */
	length = elem.asnlen;
	np = (const u_char *)elem.data.raw;

	/* Version (INTEGER) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INT) {
		FUNC0((ndo, "[version!=INT]"));
		FUNC2(ndo, &elem);
		return;
	}

	switch (elem.data.integer) {
	case SNMP_VERSION_1:
	case SNMP_VERSION_2:
	case SNMP_VERSION_3:
		if (ndo->ndo_vflag)
			FUNC0((ndo, "{ %s ", SnmpVersion[elem.data.integer]));
		break;
	default:
	        FUNC0((ndo, "SNMP [version = %d]", elem.data.integer));
		return;
	}
	version = elem.data.integer;
	length -= count;
	np += count;

	switch (version) {
	case SNMP_VERSION_1:
        case SNMP_VERSION_2:
		FUNC3(ndo, np, length, version);
		break;
	case SNMP_VERSION_3:
		FUNC4(ndo, np, length);
		break;
	default:
		FUNC0((ndo, "[version = %d]", elem.data.integer));
		break;
	}

	if (ndo->ndo_vflag) {
		FUNC0((ndo, "} "));
	}
}