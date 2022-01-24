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
typedef  int u_int ;
typedef  int u_char ;
struct TYPE_9__ {int* str; int integer; scalar_t__ raw; } ;
struct be {scalar_t__ type; int asnlen; TYPE_1__ data; } ;
struct TYPE_10__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_2__ netdissect_options ;

/* Variables and functions */
 scalar_t__ BE_INT ; 
 scalar_t__ BE_SEQ ; 
 scalar_t__ BE_STR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int const*,int,struct be*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct be*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int*,int) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
            const u_char *np, u_int length)
{
	struct be elem;
	int count = 0;
	u_char flags;
	int model;
	const u_char *xnp = np;
	int xlength = length;

	/* Sequence */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_SEQ) {
		FUNC0((ndo, "[!message]"));
		FUNC2(ndo, &elem);
		return;
	}
	length = elem.asnlen;
	np = (const u_char *)elem.data.raw;

	if (ndo->ndo_vflag) {
		FUNC0((ndo, "{ "));
	}

	/* msgID (INTEGER) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INT) {
		FUNC0((ndo, "[msgID!=INT]"));
		FUNC2(ndo, &elem);
		return;
	}
	length -= count;
	np += count;

	/* msgMaxSize (INTEGER) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INT) {
		FUNC0((ndo, "[msgMaxSize!=INT]"));
		FUNC2(ndo, &elem);
		return;
	}
	length -= count;
	np += count;

	/* msgFlags (OCTET STRING) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_STR) {
		FUNC0((ndo, "[msgFlags!=STR]"));
		FUNC2(ndo, &elem);
		return;
	}
	if (elem.asnlen != 1) {
		FUNC0((ndo, "[msgFlags size %d]", elem.asnlen));
		return;
	}
	flags = elem.data.str[0];
	if (flags != 0x00 && flags != 0x01 && flags != 0x03
	    && flags != 0x04 && flags != 0x05 && flags != 0x07) {
		FUNC0((ndo, "[msgFlags=0x%02X]", flags));
		return;
	}
	length -= count;
	np += count;

	FUNC0((ndo, "F=%s%s%s ",
	          flags & 0x01 ? "a" : "",
	          flags & 0x02 ? "p" : "",
	          flags & 0x04 ? "r" : ""));

	/* msgSecurityModel (INTEGER) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INT) {
		FUNC0((ndo, "[msgSecurityModel!=INT]"));
		FUNC2(ndo, &elem);
		return;
	}
	model = elem.data.integer;
	length -= count;
	np += count;

	if ((u_int)count < length)
		FUNC0((ndo, "[%d extra after message SEQ]", length - count));

	if (ndo->ndo_vflag) {
		FUNC0((ndo, "} "));
	}

	if (model == 3) {
	    if (ndo->ndo_vflag) {
		FUNC0((ndo, "{ USM "));
	    }
	} else {
	    FUNC0((ndo, "[security model %d]", model));
            return;
	}

	np = xnp + (np - xnp);
	length = xlength - (np - xnp);

	/* msgSecurityParameters (OCTET STRING) */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_STR) {
		FUNC0((ndo, "[msgSecurityParameters!=STR]"));
		FUNC2(ndo, &elem);
		return;
	}
	length -= count;
	np += count;

	if (model == 3) {
	    FUNC4(ndo, elem.data.str, elem.asnlen);
	    if (ndo->ndo_vflag) {
		FUNC0((ndo, "} "));
	    }
	}

	if (ndo->ndo_vflag) {
	    FUNC0((ndo, "{ ScopedPDU "));
	}

	FUNC3(ndo, np, length, 3);

	if (ndo->ndo_vflag) {
		FUNC0((ndo, "} "));
	}
}