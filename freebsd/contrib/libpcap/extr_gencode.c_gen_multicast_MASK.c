#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct slist {int dummy; } ;
struct TYPE_13__ {int k; } ;
struct block {struct slist* stmts; TYPE_1__ s; } ;
struct TYPE_14__ {int /*<<< orphan*/  linktype; } ;
typedef  TYPE_2__ compiler_state_t ;
typedef  int /*<<< orphan*/  bpf_int32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_B ; 
 int /*<<< orphan*/  BPF_JSET ; 
#define  DLT_ARCNET 144 
#define  DLT_ARCNET_LINUX 143 
#define  DLT_EN10MB 142 
#define  DLT_FDDI 141 
#define  DLT_IEEE802 140 
#define  DLT_IEEE802_11 139 
#define  DLT_IEEE802_11_RADIO 138 
#define  DLT_IEEE802_11_RADIO_AVS 137 
#define  DLT_IP_OVER_FC 136 
#define  DLT_NETANALYZER 135 
#define  DLT_NETANALYZER_TRANSPARENT 134 
#define  DLT_PPI 133 
#define  DLT_PRISM_HEADER 132 
 int /*<<< orphan*/  ETHERTYPE_IP ; 
 int /*<<< orphan*/  ETHERTYPE_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OR_LINKHDR ; 
 int /*<<< orphan*/  OR_LINKPL ; 
#define  Q_DEFAULT 131 
 int /*<<< orphan*/  Q_DST ; 
#define  Q_IP 130 
#define  Q_IPV6 129 
#define  Q_LINK 128 
 int /*<<< orphan*/  abroadcast ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 struct block* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct block*,struct block*) ; 
 struct block* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct block* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct block* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct slist* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct block* FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct block*) ; 
 int /*<<< orphan*/  FUNC10 (struct block*,struct block*) ; 
 struct block* FUNC11 (TYPE_2__*) ; 
 struct block* FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 

struct block *
FUNC13(compiler_state_t *cstate, int proto)
{
	register struct block *b0, *b1, *b2;
	register struct slist *s;

	switch (proto) {

	case Q_DEFAULT:
	case Q_LINK:
		switch (cstate->linktype) {
		case DLT_ARCNET:
		case DLT_ARCNET_LINUX:
			/* all ARCnet multicasts use the same address */
			return FUNC2(cstate, abroadcast, Q_DST);
		case DLT_EN10MB:
		case DLT_NETANALYZER:
		case DLT_NETANALYZER_TRANSPARENT:
			b1 = FUNC11(cstate);
			/* ether[0] & 1 != 0 */
			b0 = FUNC8(cstate, 0);
			if (b1 != NULL)
				FUNC3(b1, b0);
			return b0;
		case DLT_FDDI:
			/*
			 * XXX TEST THIS: MIGHT NOT PORT PROPERLY XXX
			 *
			 * XXX - was that referring to bit-order issues?
			 */
			/* fddi[1] & 1 != 0 */
			return FUNC8(cstate, 1);
		case DLT_IEEE802:
			/* tr[2] & 1 != 0 */
			return FUNC8(cstate, 2);
		case DLT_IEEE802_11:
		case DLT_PRISM_HEADER:
		case DLT_IEEE802_11_RADIO_AVS:
		case DLT_IEEE802_11_RADIO:
		case DLT_PPI:
			/*
			 * Oh, yuk.
			 *
			 *	For control frames, there is no DA.
			 *
			 *	For management frames, DA is at an
			 *	offset of 4 from the beginning of
			 *	the packet.
			 *
			 *	For data frames, DA is at an offset
			 *	of 4 from the beginning of the packet
			 *	if To DS is clear and at an offset of
			 *	16 from the beginning of the packet
			 *	if To DS is set.
			 */

			/*
			 * Generate the tests to be done for data frames.
			 *
			 * First, check for To DS set, i.e. "link[1] & 0x01".
			 */
			s = FUNC7(cstate, OR_LINKHDR, 1, BPF_B);
			b1 = FUNC12(cstate, FUNC0(BPF_JSET));
			b1->s.k = 0x01;	/* To DS */
			b1->stmts = s;

			/*
			 * If To DS is set, the DA is at 16.
			 */
			b0 = FUNC8(cstate, 16);
			FUNC3(b1, b0);

			/*
			 * Now, check for To DS not set, i.e. check
			 * "!(link[1] & 0x01)".
			 */
			s = FUNC7(cstate, OR_LINKHDR, 1, BPF_B);
			b2 = FUNC12(cstate, FUNC0(BPF_JSET));
			b2->s.k = 0x01;	/* To DS */
			b2->stmts = s;
			FUNC9(b2);

			/*
			 * If To DS is not set, the DA is at 4.
			 */
			b1 = FUNC8(cstate, 4);
			FUNC3(b2, b1);

			/*
			 * Now OR together the last two checks.  That gives
			 * the complete set of checks for data frames.
			 */
			FUNC10(b1, b0);

			/*
			 * Now check for a data frame.
			 * I.e, check "link[0] & 0x08".
			 */
			s = FUNC7(cstate, OR_LINKHDR, 0, BPF_B);
			b1 = FUNC12(cstate, FUNC0(BPF_JSET));
			b1->s.k = 0x08;
			b1->stmts = s;

			/*
			 * AND that with the checks done for data frames.
			 */
			FUNC3(b1, b0);

			/*
			 * If the high-order bit of the type value is 0, this
			 * is a management frame.
			 * I.e, check "!(link[0] & 0x08)".
			 */
			s = FUNC7(cstate, OR_LINKHDR, 0, BPF_B);
			b2 = FUNC12(cstate, FUNC0(BPF_JSET));
			b2->s.k = 0x08;
			b2->stmts = s;
			FUNC9(b2);

			/*
			 * For management frames, the DA is at 4.
			 */
			b1 = FUNC8(cstate, 4);
			FUNC3(b2, b1);

			/*
			 * OR that with the checks done for data frames.
			 * That gives the checks done for management and
			 * data frames.
			 */
			FUNC10(b1, b0);

			/*
			 * If the low-order bit of the type value is 1,
			 * this is either a control frame or a frame
			 * with a reserved type, and thus not a
			 * frame with an SA.
			 *
			 * I.e., check "!(link[0] & 0x04)".
			 */
			s = FUNC7(cstate, OR_LINKHDR, 0, BPF_B);
			b1 = FUNC12(cstate, FUNC0(BPF_JSET));
			b1->s.k = 0x04;
			b1->stmts = s;
			FUNC9(b1);

			/*
			 * AND that with the checks for data and management
			 * frames.
			 */
			FUNC3(b1, b0);
			return b0;
		case DLT_IP_OVER_FC:
			b0 = FUNC8(cstate, 2);
			return b0;
		default:
			break;
		}
		/* Link not known to support multicasts */
		break;

	case Q_IP:
		b0 = FUNC6(cstate, ETHERTYPE_IP);
		b1 = FUNC5(cstate, OR_LINKPL, 16, BPF_B, (bpf_int32)224);
		FUNC3(b0, b1);
		return b1;

	case Q_IPV6:
		b0 = FUNC6(cstate, ETHERTYPE_IPV6);
		b1 = FUNC4(cstate, OR_LINKPL, 24, BPF_B, (bpf_int32)255);
		FUNC3(b0, b1);
		return b1;
	}
	FUNC1(cstate, "link-layer multicast filters supported only on ethernet/FDDI/token ring/ARCNET/802.11/ATM LANE/Fibre Channel");
	/* NOTREACHED */
}