#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int8_t ;
struct TYPE_4__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {TYPE_1__ a; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ v; } ;
struct pf_rule_addr {int /*<<< orphan*/ * port; scalar_t__ port_op; TYPE_3__ addr; scalar_t__ neg; } ;
typedef  int /*<<< orphan*/  sa_family_t ;
typedef  scalar_t__ pf_osfp_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ PF_ADDR_ADDRMASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PF_OSFP_ANY ; 
 int PF_OSFP_LEN ; 
 char* FUNC1 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void
FUNC5(struct pf_rule_addr *src, pf_osfp_t osfp, struct pf_rule_addr *dst,
    sa_family_t af, u_int8_t proto, int verbose, int numeric)
{
	char buf[PF_OSFP_LEN*3];
	if (src->addr.type == PF_ADDR_ADDRMASK &&
	    dst->addr.type == PF_ADDR_ADDRMASK &&
	    FUNC0(&src->addr.v.a.addr, AF_INET6) &&
	    FUNC0(&src->addr.v.a.mask, AF_INET6) &&
	    FUNC0(&dst->addr.v.a.addr, AF_INET6) &&
	    FUNC0(&dst->addr.v.a.mask, AF_INET6) &&
	    !src->neg && !dst->neg &&
	    !src->port_op && !dst->port_op &&
	    osfp == PF_OSFP_ANY)
		FUNC4(" all");
	else {
		FUNC4(" from ");
		if (src->neg)
			FUNC4("! ");
		FUNC2(&src->addr, af, verbose);
		if (src->port_op)
			FUNC3(src->port_op, src->port[0],
			    src->port[1],
			    proto == IPPROTO_TCP ? "tcp" : "udp",
			    numeric);
		if (osfp != PF_OSFP_ANY)
			FUNC4(" os \"%s\"", FUNC1(osfp, buf,
			    sizeof(buf)));

		FUNC4(" to ");
		if (dst->neg)
			FUNC4("! ");
		FUNC2(&dst->addr, af, verbose);
		if (dst->port_op)
			FUNC3(dst->port_op, dst->port[0],
			    dst->port[1],
			    proto == IPPROTO_TCP ? "tcp" : "udp",
			    numeric);
	}
}