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
struct block {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  linktype; } ;
typedef  TYPE_1__ compiler_state_t ;
typedef  long bpf_int32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_B ; 
 int /*<<< orphan*/  BPF_H ; 
#define  DLT_C_HDLC 159 
#define  DLT_FRELAY 158 
 int ETHERTYPE_IP ; 
 int ETHERTYPE_IPV6 ; 
 long IPPROTO_FRAGMENT ; 
 int ISO10589_ISIS ; 
 int LLCSAP_ISONS ; 
 int /*<<< orphan*/  OR_LINKHDR ; 
 int /*<<< orphan*/  OR_LINKPL ; 
 int /*<<< orphan*/  OR_LINKPL_NOSNAP ; 
#define  Q_AH 157 
#define  Q_ARP 156 
#define  Q_ATALK 155 
#define  Q_CARP 154 
#define  Q_DECNET 153 
#define  Q_DEFAULT 152 
#define  Q_ESP 151 
#define  Q_ICMP 150 
#define  Q_ICMPV6 149 
#define  Q_IGMP 148 
#define  Q_IGRP 147 
#define  Q_IP 146 
#define  Q_IPV6 145 
#define  Q_IPX 144 
#define  Q_ISIS 143 
#define  Q_ISO 142 
#define  Q_LAT 141 
#define  Q_LINK 140 
#define  Q_MOPDL 139 
#define  Q_MOPRC 138 
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
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct block*,struct block*) ; 
 struct block* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,long) ; 
 struct block* FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct block*,struct block*) ; 
 struct block* FUNC6 (TYPE_1__*,int,int const) ; 

__attribute__((used)) static struct block *
FUNC7(compiler_state_t *cstate, int v, int proto, int dir)
{
	struct block *b0, *b1;
#ifndef CHASE_CHAIN
	struct block *b2;
#endif

	if (dir != Q_DEFAULT)
		FUNC1(cstate, "direction applied to 'proto'");

	switch (proto) {
	case Q_DEFAULT:
		b0 = FUNC7(cstate, v, Q_IP, dir);
		b1 = FUNC7(cstate, v, Q_IPV6, dir);
		FUNC5(b0, b1);
		return b1;

	case Q_IP:
		/*
		 * For FDDI, RFC 1188 says that SNAP encapsulation is used,
		 * not LLC encapsulation with LLCSAP_IP.
		 *
		 * For IEEE 802 networks - which includes 802.5 token ring
		 * (which is what DLT_IEEE802 means) and 802.11 - RFC 1042
		 * says that SNAP encapsulation is used, not LLC encapsulation
		 * with LLCSAP_IP.
		 *
		 * For LLC-encapsulated ATM/"Classical IP", RFC 1483 and
		 * RFC 2225 say that SNAP encapsulation is used, not LLC
		 * encapsulation with LLCSAP_IP.
		 *
		 * So we always check for ETHERTYPE_IP.
		 */
		b0 = FUNC4(cstate, ETHERTYPE_IP);
#ifndef CHASE_CHAIN
		b1 = FUNC3(cstate, OR_LINKPL, 9, BPF_B, (bpf_int32)v);
#else
		b1 = gen_protochain(cstate, v, Q_IP);
#endif
		FUNC2(b0, b1);
		return b1;

	case Q_ISO:
		switch (cstate->linktype) {

		case DLT_FRELAY:
			/*
			 * Frame Relay packets typically have an OSI
			 * NLPID at the beginning; "gen_linktype(cstate, LLCSAP_ISONS)"
			 * generates code to check for all the OSI
			 * NLPIDs, so calling it and then adding a check
			 * for the particular NLPID for which we're
			 * looking is bogus, as we can just check for
			 * the NLPID.
			 *
			 * What we check for is the NLPID and a frame
			 * control field value of UI, i.e. 0x03 followed
			 * by the NLPID.
			 *
			 * XXX - assumes a 2-byte Frame Relay header with
			 * DLCI and flags.  What if the address is longer?
			 *
			 * XXX - what about SNAP-encapsulated frames?
			 */
			return FUNC3(cstate, OR_LINKHDR, 2, BPF_H, (0x03<<8) | v);
			/*NOTREACHED*/
			break;

		case DLT_C_HDLC:
			/*
			 * Cisco uses an Ethertype lookalike - for OSI,
			 * it's 0xfefe.
			 */
			b0 = FUNC4(cstate, LLCSAP_ISONS<<8 | LLCSAP_ISONS);
			/* OSI in C-HDLC is stuffed with a fudge byte */
			b1 = FUNC3(cstate, OR_LINKPL_NOSNAP, 1, BPF_B, (long)v);
			FUNC2(b0, b1);
			return b1;

		default:
			b0 = FUNC4(cstate, LLCSAP_ISONS);
			b1 = FUNC3(cstate, OR_LINKPL_NOSNAP, 0, BPF_B, (long)v);
			FUNC2(b0, b1);
			return b1;
		}

	case Q_ISIS:
		b0 = FUNC7(cstate, ISO10589_ISIS, Q_ISO, Q_DEFAULT);
		/*
		 * 4 is the offset of the PDU type relative to the IS-IS
		 * header.
		 */
		b1 = FUNC3(cstate, OR_LINKPL_NOSNAP, 4, BPF_B, (long)v);
		FUNC2(b0, b1);
		return b1;

	case Q_ARP:
		FUNC1(cstate, "arp does not encapsulate another protocol");
		/* NOTREACHED */

	case Q_RARP:
		FUNC1(cstate, "rarp does not encapsulate another protocol");
		/* NOTREACHED */

	case Q_ATALK:
		FUNC1(cstate, "atalk encapsulation is not specifiable");
		/* NOTREACHED */

	case Q_DECNET:
		FUNC1(cstate, "decnet encapsulation is not specifiable");
		/* NOTREACHED */

	case Q_SCA:
		FUNC1(cstate, "sca does not encapsulate another protocol");
		/* NOTREACHED */

	case Q_LAT:
		FUNC1(cstate, "lat does not encapsulate another protocol");
		/* NOTREACHED */

	case Q_MOPRC:
		FUNC1(cstate, "moprc does not encapsulate another protocol");
		/* NOTREACHED */

	case Q_MOPDL:
		FUNC1(cstate, "mopdl does not encapsulate another protocol");
		/* NOTREACHED */

	case Q_LINK:
		return FUNC4(cstate, v);

	case Q_UDP:
		FUNC1(cstate, "'udp proto' is bogus");
		/* NOTREACHED */

	case Q_TCP:
		FUNC1(cstate, "'tcp proto' is bogus");
		/* NOTREACHED */

	case Q_SCTP:
		FUNC1(cstate, "'sctp proto' is bogus");
		/* NOTREACHED */

	case Q_ICMP:
		FUNC1(cstate, "'icmp proto' is bogus");
		/* NOTREACHED */

	case Q_IGMP:
		FUNC1(cstate, "'igmp proto' is bogus");
		/* NOTREACHED */

	case Q_IGRP:
		FUNC1(cstate, "'igrp proto' is bogus");
		/* NOTREACHED */

	case Q_PIM:
		FUNC1(cstate, "'pim proto' is bogus");
		/* NOTREACHED */

	case Q_VRRP:
		FUNC1(cstate, "'vrrp proto' is bogus");
		/* NOTREACHED */

	case Q_CARP:
		FUNC1(cstate, "'carp proto' is bogus");
		/* NOTREACHED */

	case Q_IPV6:
		b0 = FUNC4(cstate, ETHERTYPE_IPV6);
#ifndef CHASE_CHAIN
		/*
		 * Also check for a fragment header before the final
		 * header.
		 */
		b2 = FUNC3(cstate, OR_LINKPL, 6, BPF_B, IPPROTO_FRAGMENT);
		b1 = FUNC3(cstate, OR_LINKPL, 40, BPF_B, (bpf_int32)v);
		FUNC2(b2, b1);
		b2 = FUNC3(cstate, OR_LINKPL, 6, BPF_B, (bpf_int32)v);
		FUNC5(b2, b1);
#else
		b1 = gen_protochain(cstate, v, Q_IPV6);
#endif
		FUNC2(b0, b1);
		return b1;

	case Q_ICMPV6:
		FUNC1(cstate, "'icmp6 proto' is bogus");

	case Q_AH:
		FUNC1(cstate, "'ah proto' is bogus");

	case Q_ESP:
		FUNC1(cstate, "'ah proto' is bogus");

	case Q_STP:
		FUNC1(cstate, "'stp proto' is bogus");

	case Q_IPX:
		FUNC1(cstate, "'ipx proto' is bogus");

	case Q_NETBEUI:
		FUNC1(cstate, "'netbeui proto' is bogus");

	case Q_RADIO:
		FUNC1(cstate, "'radio proto' is bogus");

	default:
		FUNC0();
		/* NOTREACHED */
	}
	/* NOTREACHED */
}