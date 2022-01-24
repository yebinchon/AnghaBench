#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct ospf6hdr {int ospf6_version; scalar_t__ ospf6_instanceid; scalar_t__ ospf6_areaid; scalar_t__ ospf6_routerid; scalar_t__ ospf6_len; scalar_t__ ospf6_type; } ;
struct TYPE_7__ {int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct ospf6hdr const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct ospf6hdr const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  ospf6_type_values ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC8(netdissect_options *ndo,
            register const u_char *bp, register u_int length)
{
	register const struct ospf6hdr *op;
	register const u_char *dataend;
	register const char *cp;
	uint16_t datalen;

	op = (const struct ospf6hdr *)bp;

	/* If the type is valid translate it, or just print the type */
	/* value.  If it's not valid, say so and return */
	FUNC3(op->ospf6_type);
	cp = FUNC7(ospf6_type_values, "unknown packet type (%u)", op->ospf6_type);
	FUNC2((ndo, "OSPFv%u, %s, length %d", op->ospf6_version, cp, length));
	if (*cp == 'u') {
		return;
	}

	if(!ndo->ndo_vflag) { /* non verbose - so lets bail out here */
		return;
	}

	/* OSPFv3 data always comes first and optional trailing data may follow. */
	FUNC3(op->ospf6_len);
	datalen = FUNC0(&op->ospf6_len);
	if (datalen > length) {
		FUNC2((ndo, " [len %d]", datalen));
		return;
	}
	dataend = bp + datalen;

	FUNC3(op->ospf6_routerid);
	FUNC2((ndo, "\n\tRouter-ID %s", FUNC4(ndo, &op->ospf6_routerid)));

	FUNC3(op->ospf6_areaid);
	if (FUNC1(&op->ospf6_areaid) != 0)
		FUNC2((ndo, ", Area %s", FUNC4(ndo, &op->ospf6_areaid)));
	else
		FUNC2((ndo, ", Backbone Area"));
	FUNC3(op->ospf6_instanceid);
	if (op->ospf6_instanceid)
		FUNC2((ndo, ", Instance %u", op->ospf6_instanceid));

	/* Do rest according to version.	 */
	switch (op->ospf6_version) {

	case 3:
		/* ospf version 3 */
		if (FUNC5(ndo, op, dataend) ||
		    FUNC6(ndo, op, dataend, length - datalen))
			goto trunc;
		break;
	}			/* end switch on version */

	return;
trunc:
	FUNC2((ndo, "%s", tstr));
}