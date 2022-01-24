#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_scope_id; int /*<<< orphan*/  sin6_addr; } ;
struct in_addr {int s_addr; } ;
struct addrinfo {scalar_t__ ai_addr; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_family; } ;
struct TYPE_7__ {int nh4; int dscp; int /*<<< orphan*/  zoneid; int /*<<< orphan*/  nh6; void* limit; void* nat; void* fib; void* netgraph; void* skipto; void* divert; void* pipe; void* tag; } ;
typedef  TYPE_2__ ipfw_table_value ;
struct TYPE_6__ {TYPE_2__ value; } ;
struct TYPE_8__ {TYPE_1__ v; } ;
typedef  TYPE_3__ ipfw_obj_tentry ;
typedef  int /*<<< orphan*/  ipfw_obj_header ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
#define  IPFW_VTYPE_DIVERT 138 
#define  IPFW_VTYPE_DSCP 137 
#define  IPFW_VTYPE_FIB 136 
 int IPFW_VTYPE_LEGACY ; 
#define  IPFW_VTYPE_LIMIT 135 
#define  IPFW_VTYPE_NAT 134 
#define  IPFW_VTYPE_NETGRAPH 133 
#define  IPFW_VTYPE_NH4 132 
#define  IPFW_VTYPE_NH6 131 
#define  IPFW_VTYPE_PIPE 130 
#define  IPFW_VTYPE_SKIPTO 129 
#define  IPFW_VTYPE_TAG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  f_ipdscp ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 scalar_t__ FUNC5 (char*,struct in_addr*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,TYPE_2__*) ; 
 char* FUNC10 (char*,char) ; 
 void* FUNC11 (char*,char**,int) ; 
 int FUNC12 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(ipfw_obj_header *oh, ipfw_obj_tentry *tent, char *arg,
    uint8_t type, uint32_t vmask)
{
	struct addrinfo hints, *res;
	uint32_t a4, flag, val;
	ipfw_table_value *v;
	uint32_t i;
	int dval;
	char *comma, *e, *etype, *n, *p;
	struct in_addr ipaddr;

	v = &tent->v.value;

	/* Compat layer: keep old behavior for legacy value types */
	if (vmask == IPFW_VTYPE_LEGACY) {
		/* Try to interpret as number first */
		val = FUNC12(arg, &p, 0);
		if (*p == '\0') {
			FUNC9(val, v);
			return;
		}
		if (FUNC3(AF_INET, arg, &val) == 1) {
			FUNC9(FUNC8(val), v);
			return;
		}
		/* Try hostname */
		if (FUNC5(arg, &ipaddr) == 0) {
			FUNC9(FUNC8(ipaddr.s_addr), v);
			return;
		}
		FUNC0(EX_OSERR, "Unable to parse value %s", arg);
	}

	/*
	 * Shorthands: handle single value if vmask consists
	 * of numbers only. e.g.:
	 * vmask = "fib,skipto" -> treat input "1" as "1,1"
	 */

	n = arg;
	etype = NULL;
	for (i = 1; i < (1 << 31); i *= 2) {
		if ((flag = (vmask & i)) == 0)
			continue;
		vmask &= ~flag;

		if ((comma = FUNC10(n, ',')) != NULL)
			*comma = '\0';

		switch (flag) {
		case IPFW_VTYPE_TAG:
			v->tag = FUNC11(n, &e, 10);
			if (*e != '\0')
				etype = "tag";
			break;
		case IPFW_VTYPE_PIPE:
			v->pipe = FUNC11(n, &e, 10);
			if (*e != '\0')
				etype = "pipe";
			break;
		case IPFW_VTYPE_DIVERT:
			v->divert = FUNC11(n, &e, 10);
			if (*e != '\0')
				etype = "divert";
			break;
		case IPFW_VTYPE_SKIPTO:
			v->skipto = FUNC11(n, &e, 10);
			if (*e != '\0')
				etype = "skipto";
			break;
		case IPFW_VTYPE_NETGRAPH:
			v->netgraph = FUNC11(n, &e, 10);
			if (*e != '\0')
				etype = "netgraph";
			break;
		case IPFW_VTYPE_FIB:
			v->fib = FUNC11(n, &e, 10);
			if (*e != '\0')
				etype = "fib";
			break;
		case IPFW_VTYPE_NAT:
			v->nat = FUNC11(n, &e, 10);
			if (*e != '\0')
				etype = "nat";
			break;
		case IPFW_VTYPE_LIMIT:
			v->limit = FUNC11(n, &e, 10);
			if (*e != '\0')
				etype = "limit";
			break;
		case IPFW_VTYPE_NH4:
			if (FUNC10(n, '.') != NULL &&
			    FUNC3(AF_INET, n, &a4) == 1) {
				v->nh4 = FUNC8(a4);
				break;
			}
			if (FUNC5(n, &ipaddr) == 0) {
				v->nh4 = FUNC8(ipaddr.s_addr);
				break;
			}
			etype = "ipv4";
			break;
		case IPFW_VTYPE_DSCP:
			if (FUNC4(*n)) {
				if ((dval = FUNC6(f_ipdscp, n)) != -1) {
					v->dscp = dval;
					break;
				} else
					etype = "DSCP code";
			} else {
				v->dscp = FUNC11(n, &e, 10);
				if (v->dscp > 63 || *e != '\0')
					etype = "DSCP value";
			}
			break;
		case IPFW_VTYPE_NH6:
			if (FUNC10(n, ':') != NULL) {
				FUNC7(&hints, 0, sizeof(hints));
				hints.ai_family = AF_INET6;
				hints.ai_flags = AI_NUMERICHOST;
				if (FUNC2(n, NULL, &hints, &res) == 0) {
					v->nh6 = ((struct sockaddr_in6 *)
					    res->ai_addr)->sin6_addr;
					v->zoneid = ((struct sockaddr_in6 *)
					    res->ai_addr)->sin6_scope_id;
					FUNC1(res);
					break;
				}
			}
			etype = "ipv6";
			break;
		}

		if (etype != NULL)
			FUNC0(EX_USAGE, "Unable to parse %s as %s", n, etype);

		if (comma != NULL)
			*comma++ = ',';

		if ((n = comma) != NULL)
			continue;

		/* End of input. */
		if (vmask != 0)
			FUNC0(EX_USAGE, "Not enough fields inside value");
	}
}