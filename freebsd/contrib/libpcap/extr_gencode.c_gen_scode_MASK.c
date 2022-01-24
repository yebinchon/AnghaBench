#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_24__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct qual {int proto; int dir; int addr; } ;
struct in6_addr {int dummy; } ;
struct block {int dummy; } ;
struct addrinfo {scalar_t__ ai_addr; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  mask128 ;
struct TYPE_23__ {int /*<<< orphan*/  constant_part; } ;
struct TYPE_25__ {struct addrinfo* ai; TYPE_1__ off_linktype; int /*<<< orphan*/  linktype; } ;
typedef  TYPE_3__ compiler_state_t ;
typedef  int bpf_u_int32 ;

/* Variables and functions */
#define  AF_INET 149 
#define  AF_INET6 148 
#define  DLT_EN10MB 147 
#define  DLT_FDDI 146 
#define  DLT_IEEE802 145 
#define  DLT_IEEE802_11 144 
#define  DLT_IEEE802_11_RADIO 143 
#define  DLT_IEEE802_11_RADIO_AVS 142 
#define  DLT_IP_OVER_FC 141 
#define  DLT_NETANALYZER 140 
#define  DLT_NETANALYZER_TRANSPARENT 139 
#define  DLT_PPI 138 
#define  DLT_PRISM_HEADER 137 
 int IPPROTO_SCTP ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int /*<<< orphan*/  OFFSET_NOT_SET ; 
 int Q_DECNET ; 
#define  Q_DEFAULT 136 
#define  Q_GATEWAY 135 
#define  Q_HOST 134 
 int Q_IP ; 
 int Q_IPV6 ; 
 int Q_LINK ; 
#define  Q_NET 133 
#define  Q_PORT 132 
#define  Q_PORTRANGE 131 
#define  Q_PROTO 130 
#define  Q_PROTOCHAIN 129 
 int Q_SCTP ; 
 int Q_TCP ; 
 int Q_UDP ; 
#define  Q_UNDEF 128 
 int /*<<< orphan*/  FUNC0 (char const*,unsigned short*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct block*,struct block*) ; 
 struct block* FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 struct block* FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 struct block* FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,struct addrinfo*,int,int) ; 
 struct block* FUNC9 (TYPE_3__*,unsigned short,int,int,int,int) ; 
 struct block* FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,struct in6_addr*,int,int,int) ; 
 struct block* FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct block*,struct block*) ; 
 struct block* FUNC13 (TYPE_3__*,int,int,int) ; 
 struct block* FUNC14 (TYPE_3__*,int,int,int) ; 
 struct block* FUNC15 (TYPE_3__*,int,int,int,int) ; 
 struct block* FUNC16 (TYPE_3__*,int,int,int,int) ; 
 struct block* FUNC17 (TYPE_3__*) ; 
 struct block* FUNC18 (TYPE_3__*,int,int,int) ; 
 struct block* FUNC19 (TYPE_3__*,int,int,int) ; 
 struct block* FUNC20 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 struct block* FUNC21 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int FUNC22 (TYPE_3__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct in6_addr*,int,int) ; 
 unsigned short FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC25 (char const*) ; 
 struct addrinfo* FUNC26 (char const*) ; 
 int FUNC27 (char const*) ; 
 int /*<<< orphan*/  FUNC28 (char const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC29 (char const*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*) ; 

struct block *
FUNC31(compiler_state_t *cstate, const char *name, struct qual q)
{
	int proto = q.proto;
	int dir = q.dir;
	int tproto;
	u_char *eaddr;
	bpf_u_int32 mask, addr;
	struct addrinfo *res, *res0;
	struct sockaddr_in *sin4;
#ifdef INET6
	int tproto6;
	struct sockaddr_in6 *sin6;
	struct in6_addr mask128;
#endif /*INET6*/
	struct block *b, *tmp;
	int port, real_proto;
	int port1, port2;

	switch (q.addr) {

	case Q_NET:
		addr = FUNC27(name);
		if (addr == 0)
			FUNC2(cstate, "unknown network '%s'", name);
		/* Left justify network addr and calculate its network mask */
		mask = 0xffffffff;
		while (addr && (addr & 0xff000000) == 0) {
			addr <<= 8;
			mask <<= 8;
		}
		return FUNC9(cstate, addr, mask, proto, dir, q.addr);

	case Q_DEFAULT:
	case Q_HOST:
		if (proto == Q_LINK) {
			switch (cstate->linktype) {

			case DLT_EN10MB:
			case DLT_NETANALYZER:
			case DLT_NETANALYZER_TRANSPARENT:
				eaddr = FUNC25(name);
				if (eaddr == NULL)
					FUNC2(cstate,
					    "unknown ether host '%s'", name);
				tmp = FUNC17(cstate);
				b = FUNC6(cstate, eaddr, dir);
				if (tmp != NULL)
					FUNC5(tmp, b);
				FUNC3(eaddr);
				return b;

			case DLT_FDDI:
				eaddr = FUNC25(name);
				if (eaddr == NULL)
					FUNC2(cstate,
					    "unknown FDDI host '%s'", name);
				b = FUNC7(cstate, eaddr, dir);
				FUNC3(eaddr);
				return b;

			case DLT_IEEE802:
				eaddr = FUNC25(name);
				if (eaddr == NULL)
					FUNC2(cstate,
					    "unknown token ring host '%s'", name);
				b = FUNC20(cstate, eaddr, dir);
				FUNC3(eaddr);
				return b;

			case DLT_IEEE802_11:
			case DLT_PRISM_HEADER:
			case DLT_IEEE802_11_RADIO_AVS:
			case DLT_IEEE802_11_RADIO:
			case DLT_PPI:
				eaddr = FUNC25(name);
				if (eaddr == NULL)
					FUNC2(cstate,
					    "unknown 802.11 host '%s'", name);
				b = FUNC21(cstate, eaddr, dir);
				FUNC3(eaddr);
				return b;

			case DLT_IP_OVER_FC:
				eaddr = FUNC25(name);
				if (eaddr == NULL)
					FUNC2(cstate,
					    "unknown Fibre Channel host '%s'", name);
				b = FUNC11(cstate, eaddr, dir);
				FUNC3(eaddr);
				return b;
			}

			FUNC2(cstate, "only ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel supports link-level host name");
		} else if (proto == Q_DECNET) {
			unsigned short dn_addr;

			if (!FUNC0(name, &dn_addr)) {
#ifdef	DECNETLIB
				bpf_error(cstate, "unknown decnet host name '%s'\n", name);
#else
				FUNC2(cstate, "decnet name support not included, '%s' cannot be translated\n",
					name);
#endif
			}
			/*
			 * I don't think DECNET hosts can be multihomed, so
			 * there is no need to build up a list of addresses
			 */
			return (FUNC9(cstate, dn_addr, 0, proto, dir, q.addr));
		} else {
#ifdef INET6
			memset(&mask128, 0xff, sizeof(mask128));
#endif
			res0 = res = FUNC26(name);
			if (res == NULL)
				FUNC2(cstate, "unknown host '%s'", name);
			cstate->ai = res;
			b = tmp = NULL;
			tproto = proto;
#ifdef INET6
			tproto6 = proto;
#endif
			if (cstate->off_linktype.constant_part == OFFSET_NOT_SET &&
			    tproto == Q_DEFAULT) {
				tproto = Q_IP;
#ifdef INET6
				tproto6 = Q_IPV6;
#endif
			}
			for (res = res0; res; res = res->ai_next) {
				switch (res->ai_family) {
				case AF_INET:
#ifdef INET6
					if (tproto == Q_IPV6)
						continue;
#endif

					sin4 = (struct sockaddr_in *)
						res->ai_addr;
					tmp = FUNC9(cstate, FUNC24(sin4->sin_addr.s_addr),
						0xffffffff, tproto, dir, q.addr);
					break;
#ifdef INET6
				case AF_INET6:
					if (tproto6 == Q_IP)
						continue;

					sin6 = (struct sockaddr_in6 *)
						res->ai_addr;
					tmp = gen_host6(cstate, &sin6->sin6_addr,
						&mask128, tproto6, dir, q.addr);
					break;
#endif
				default:
					continue;
				}
				if (b)
					FUNC12(b, tmp);
				b = tmp;
			}
			cstate->ai = NULL;
			FUNC4(res0);
			if (b == NULL) {
				FUNC2(cstate, "unknown host '%s'%s", name,
				    (proto == Q_DEFAULT)
					? ""
					: " for specified address family");
			}
			return b;
		}

	case Q_PORT:
		if (proto != Q_DEFAULT &&
		    proto != Q_UDP && proto != Q_TCP && proto != Q_SCTP)
			FUNC2(cstate, "illegal qualifier of 'port'");
		if (FUNC28(name, &port, &real_proto) == 0)
			FUNC2(cstate, "unknown port '%s'", name);
		if (proto == Q_UDP) {
			if (real_proto == IPPROTO_TCP)
				FUNC2(cstate, "port '%s' is tcp", name);
			else if (real_proto == IPPROTO_SCTP)
				FUNC2(cstate, "port '%s' is sctp", name);
			else
				/* override PROTO_UNDEF */
				real_proto = IPPROTO_UDP;
		}
		if (proto == Q_TCP) {
			if (real_proto == IPPROTO_UDP)
				FUNC2(cstate, "port '%s' is udp", name);

			else if (real_proto == IPPROTO_SCTP)
				FUNC2(cstate, "port '%s' is sctp", name);
			else
				/* override PROTO_UNDEF */
				real_proto = IPPROTO_TCP;
		}
		if (proto == Q_SCTP) {
			if (real_proto == IPPROTO_UDP)
				FUNC2(cstate, "port '%s' is udp", name);

			else if (real_proto == IPPROTO_TCP)
				FUNC2(cstate, "port '%s' is tcp", name);
			else
				/* override PROTO_UNDEF */
				real_proto = IPPROTO_SCTP;
		}
		if (port < 0)
			FUNC2(cstate, "illegal port number %d < 0", port);
		if (port > 65535)
			FUNC2(cstate, "illegal port number %d > 65535", port);
		b = FUNC13(cstate, port, real_proto, dir);
		FUNC12(FUNC14(cstate, port, real_proto, dir), b);
		return b;

	case Q_PORTRANGE:
		if (proto != Q_DEFAULT &&
		    proto != Q_UDP && proto != Q_TCP && proto != Q_SCTP)
			FUNC2(cstate, "illegal qualifier of 'portrange'");
		if (FUNC29(name, &port1, &port2, &real_proto) == 0)
			FUNC2(cstate, "unknown port in range '%s'", name);
		if (proto == Q_UDP) {
			if (real_proto == IPPROTO_TCP)
				FUNC2(cstate, "port in range '%s' is tcp", name);
			else if (real_proto == IPPROTO_SCTP)
				FUNC2(cstate, "port in range '%s' is sctp", name);
			else
				/* override PROTO_UNDEF */
				real_proto = IPPROTO_UDP;
		}
		if (proto == Q_TCP) {
			if (real_proto == IPPROTO_UDP)
				FUNC2(cstate, "port in range '%s' is udp", name);
			else if (real_proto == IPPROTO_SCTP)
				FUNC2(cstate, "port in range '%s' is sctp", name);
			else
				/* override PROTO_UNDEF */
				real_proto = IPPROTO_TCP;
		}
		if (proto == Q_SCTP) {
			if (real_proto == IPPROTO_UDP)
				FUNC2(cstate, "port in range '%s' is udp", name);
			else if (real_proto == IPPROTO_TCP)
				FUNC2(cstate, "port in range '%s' is tcp", name);
			else
				/* override PROTO_UNDEF */
				real_proto = IPPROTO_SCTP;
		}
		if (port1 < 0)
			FUNC2(cstate, "illegal port number %d < 0", port1);
		if (port1 > 65535)
			FUNC2(cstate, "illegal port number %d > 65535", port1);
		if (port2 < 0)
			FUNC2(cstate, "illegal port number %d < 0", port2);
		if (port2 > 65535)
			FUNC2(cstate, "illegal port number %d > 65535", port2);

		b = FUNC15(cstate, port1, port2, real_proto, dir);
		FUNC12(FUNC16(cstate, port1, port2, real_proto, dir), b);
		return b;

	case Q_GATEWAY:
#ifndef INET6
		eaddr = FUNC25(name);
		if (eaddr == NULL)
			FUNC2(cstate, "unknown ether host: %s", name);

		res = FUNC26(name);
		cstate->ai = res;
		if (res == NULL)
			FUNC2(cstate, "unknown host '%s'", name);
		b = FUNC8(cstate, eaddr, res, proto, dir);
		cstate->ai = NULL;
		FUNC4(res);
		if (b == NULL)
			FUNC2(cstate, "unknown host '%s'", name);
		return b;
#else
		bpf_error(cstate, "'gateway' not supported in this configuration");
#endif /*INET6*/

	case Q_PROTO:
		real_proto = FUNC22(cstate, name, proto);
		if (real_proto >= 0)
			return FUNC18(cstate, real_proto, proto, dir);
		else
			FUNC2(cstate, "unknown protocol: %s", name);

	case Q_PROTOCHAIN:
		real_proto = FUNC22(cstate, name, proto);
		if (real_proto >= 0)
			return FUNC19(cstate, real_proto, proto, dir);
		else
			FUNC2(cstate, "unknown protocol: %s", name);

	case Q_UNDEF:
		FUNC30(cstate);
		/* NOTREACHED */
	}
	FUNC1();
	/* NOTREACHED */
}