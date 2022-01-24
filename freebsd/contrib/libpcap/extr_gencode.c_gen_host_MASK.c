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
struct block {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  label_stack_depth; } ;
typedef  TYPE_1__ compiler_state_t ;
typedef  int /*<<< orphan*/  bpf_u_int32 ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERTYPE_ARP ; 
 int /*<<< orphan*/  ETHERTYPE_IP ; 
 int /*<<< orphan*/  ETHERTYPE_REVARP ; 
#define  Q_AARP 159 
#define  Q_AH 158 
#define  Q_ARP 157 
#define  Q_ATALK 156 
#define  Q_CARP 155 
#define  Q_CLNP 154 
#define  Q_DECNET 153 
#define  Q_DEFAULT 152 
#define  Q_ESIS 151 
#define  Q_ESP 150 
#define  Q_ICMP 149 
#define  Q_ICMPV6 148 
#define  Q_IGMP 147 
#define  Q_IGRP 146 
#define  Q_IP 145 
#define  Q_IPV6 144 
#define  Q_IPX 143 
#define  Q_ISIS 142 
#define  Q_ISO 141 
#define  Q_LAT 140 
#define  Q_MOPDL 139 
#define  Q_MOPRC 138 
 int Q_NET ; 
#define  Q_NETBEUI 137 
#define  Q_PIM 136 
#define  Q_RADIO 135 
#define  Q_RARP 134 
#define  Q_SCA 133 
#define  Q_SCTP 132 
#define  Q_STP 131 
#define  Q_TCP 130 
#define  Q_UDP 129 
#define  Q_VRRP 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 struct block* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct block* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct block*,struct block*) ; 

__attribute__((used)) static struct block *
FUNC5(compiler_state_t *cstate, bpf_u_int32 addr, bpf_u_int32 mask,
    int proto, int dir, int type)
{
	struct block *b0, *b1;
	const char *typestr;

	if (type == Q_NET)
		typestr = "net";
	else
		typestr = "host";

	switch (proto) {

	case Q_DEFAULT:
		b0 = FUNC5(cstate, addr, mask, Q_IP, dir, type);
		/*
		 * Only check for non-IPv4 addresses if we're not
		 * checking MPLS-encapsulated packets.
		 */
		if (cstate->label_stack_depth == 0) {
			b1 = FUNC5(cstate, addr, mask, Q_ARP, dir, type);
			FUNC4(b0, b1);
			b0 = FUNC5(cstate, addr, mask, Q_RARP, dir, type);
			FUNC4(b1, b0);
		}
		return b0;

	case Q_IP:
		return FUNC3(cstate, addr, mask, dir, ETHERTYPE_IP, 12, 16);

	case Q_RARP:
		return FUNC3(cstate, addr, mask, dir, ETHERTYPE_REVARP, 14, 24);

	case Q_ARP:
		return FUNC3(cstate, addr, mask, dir, ETHERTYPE_ARP, 14, 24);

	case Q_TCP:
		FUNC1(cstate, "'tcp' modifier applied to %s", typestr);

	case Q_SCTP:
		FUNC1(cstate, "'sctp' modifier applied to %s", typestr);

	case Q_UDP:
		FUNC1(cstate, "'udp' modifier applied to %s", typestr);

	case Q_ICMP:
		FUNC1(cstate, "'icmp' modifier applied to %s", typestr);

	case Q_IGMP:
		FUNC1(cstate, "'igmp' modifier applied to %s", typestr);

	case Q_IGRP:
		FUNC1(cstate, "'igrp' modifier applied to %s", typestr);

	case Q_PIM:
		FUNC1(cstate, "'pim' modifier applied to %s", typestr);

	case Q_VRRP:
		FUNC1(cstate, "'vrrp' modifier applied to %s", typestr);

	case Q_CARP:
		FUNC1(cstate, "'carp' modifier applied to %s", typestr);

	case Q_ATALK:
		FUNC1(cstate, "ATALK host filtering not implemented");

	case Q_AARP:
		FUNC1(cstate, "AARP host filtering not implemented");

	case Q_DECNET:
		return FUNC2(cstate, addr, dir);

	case Q_SCA:
		FUNC1(cstate, "SCA host filtering not implemented");

	case Q_LAT:
		FUNC1(cstate, "LAT host filtering not implemented");

	case Q_MOPDL:
		FUNC1(cstate, "MOPDL host filtering not implemented");

	case Q_MOPRC:
		FUNC1(cstate, "MOPRC host filtering not implemented");

	case Q_IPV6:
		FUNC1(cstate, "'ip6' modifier applied to ip host");

	case Q_ICMPV6:
		FUNC1(cstate, "'icmp6' modifier applied to %s", typestr);

	case Q_AH:
		FUNC1(cstate, "'ah' modifier applied to %s", typestr);

	case Q_ESP:
		FUNC1(cstate, "'esp' modifier applied to %s", typestr);

	case Q_ISO:
		FUNC1(cstate, "ISO host filtering not implemented");

	case Q_ESIS:
		FUNC1(cstate, "'esis' modifier applied to %s", typestr);

	case Q_ISIS:
		FUNC1(cstate, "'isis' modifier applied to %s", typestr);

	case Q_CLNP:
		FUNC1(cstate, "'clnp' modifier applied to %s", typestr);

	case Q_STP:
		FUNC1(cstate, "'stp' modifier applied to %s", typestr);

	case Q_IPX:
		FUNC1(cstate, "IPX host filtering not implemented");

	case Q_NETBEUI:
		FUNC1(cstate, "'netbeui' modifier applied to %s", typestr);

	case Q_RADIO:
		FUNC1(cstate, "'radio' modifier applied to %s", typestr);

	default:
		FUNC0();
	}
	/* NOTREACHED */
}