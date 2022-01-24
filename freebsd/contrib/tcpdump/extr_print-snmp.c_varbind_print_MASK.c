#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {scalar_t__ raw; } ;
struct be {scalar_t__ type; scalar_t__ asnlen; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  SmiNode ;

/* Variables and functions */
 scalar_t__ BE_NULL ; 
 scalar_t__ BE_OID ; 
 scalar_t__ BE_SEQ ; 
 int /*<<< orphan*/  GETBULKREQ ; 
 int /*<<< orphan*/  GETNEXTREQ ; 
 int /*<<< orphan*/  GETREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__,struct be*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct be*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct be*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,struct be*,int*) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
              u_short pduid, const u_char *np, u_int length)
{
	struct be elem;
	int count = 0, ind;
#ifdef USE_LIBSMI
	SmiNode *smiNode = NULL;
#endif
	int status;

	/* Sequence of varBind */
	if ((count = FUNC1(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_SEQ) {
		FUNC0((ndo, "[!SEQ of varbind]"));
		FUNC2(ndo, &elem);
		return;
	}
	if ((u_int)count < length)
		FUNC0((ndo, "[%d extra after SEQ of varbind]", length - count));
	/* descend */
	length = elem.asnlen;
	np = (const u_char *)elem.data.raw;

	for (ind = 1; length > 0; ind++) {
		const u_char *vbend;
		u_int vblength;

		FUNC0((ndo, " "));

		/* Sequence */
		if ((count = FUNC1(ndo, np, length, &elem)) < 0)
			return;
		if (elem.type != BE_SEQ) {
			FUNC0((ndo, "[!varbind]"));
			FUNC2(ndo, &elem);
			return;
		}
		vbend = np + count;
		vblength = length - count;
		/* descend */
		length = elem.asnlen;
		np = (const u_char *)elem.data.raw;

		/* objName (OID) */
		if ((count = FUNC1(ndo, np, length, &elem)) < 0)
			return;
		if (elem.type != BE_OID) {
			FUNC0((ndo, "[objName!=OID]"));
			FUNC2(ndo, &elem);
			return;
		}
#ifdef USE_LIBSMI
		smiNode = smi_print_variable(ndo, &elem, &status);
#else
		status = FUNC2(ndo, &elem);
#endif
		if (status < 0)
			return;
		length -= count;
		np += count;

		if (pduid != GETREQ && pduid != GETNEXTREQ
		    && pduid != GETBULKREQ)
			FUNC0((ndo, "="));

		/* objVal (ANY) */
		if ((count = FUNC1(ndo, np, length, &elem)) < 0)
			return;
		if (pduid == GETREQ || pduid == GETNEXTREQ
		    || pduid == GETBULKREQ) {
			if (elem.type != BE_NULL) {
				FUNC0((ndo, "[objVal!=NULL]"));
				if (FUNC2(ndo, &elem) < 0)
					return;
			}
		} else {
		        if (elem.type != BE_NULL) {
#ifdef USE_LIBSMI
				status = smi_print_value(ndo, smiNode, pduid, &elem);
#else
				status = FUNC2(ndo, &elem);
#endif
			}
			if (status < 0)
				return;
		}
		length = vblength;
		np = vbend;
	}
}