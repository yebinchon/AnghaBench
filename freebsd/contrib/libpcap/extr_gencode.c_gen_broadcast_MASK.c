#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct block {int dummy; } ;
struct TYPE_13__ {int netmask; int /*<<< orphan*/  linktype; } ;
typedef  TYPE_1__ compiler_state_t ;
typedef  int bpf_u_int32 ;
typedef  int /*<<< orphan*/  bpf_int32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_W ; 
#define  DLT_ARCNET 143 
#define  DLT_ARCNET_LINUX 142 
#define  DLT_EN10MB 141 
#define  DLT_FDDI 140 
#define  DLT_IEEE802 139 
#define  DLT_IEEE802_11 138 
#define  DLT_IEEE802_11_RADIO 137 
#define  DLT_IEEE802_11_RADIO_AVS 136 
#define  DLT_IP_OVER_FC 135 
#define  DLT_NETANALYZER 134 
#define  DLT_NETANALYZER_TRANSPARENT 133 
#define  DLT_PPI 132 
#define  DLT_PRISM_HEADER 131 
 int /*<<< orphan*/  ETHERTYPE_IP ; 
 int /*<<< orphan*/  OR_LINKPL ; 
 int PCAP_NETMASK_UNKNOWN ; 
#define  Q_DEFAULT 130 
 int /*<<< orphan*/  Q_DST ; 
#define  Q_IP 129 
#define  Q_LINK 128 
 int /*<<< orphan*/  abroadcast ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 struct block* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct block*,struct block*) ; 
 struct block* FUNC3 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 
 struct block* FUNC4 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 
 struct block* FUNC5 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 
 struct block* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct block* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct block*,struct block*) ; 
 struct block* FUNC9 (TYPE_1__*) ; 
 struct block* FUNC10 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 
 struct block* FUNC11 (TYPE_1__*,int const*,int /*<<< orphan*/ ) ; 

struct block *
FUNC12(compiler_state_t *cstate, int proto)
{
	bpf_u_int32 hostmask;
	struct block *b0, *b1, *b2;
	static const u_char ebroadcast[] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };

	switch (proto) {

	case Q_DEFAULT:
	case Q_LINK:
		switch (cstate->linktype) {
		case DLT_ARCNET:
		case DLT_ARCNET_LINUX:
			return FUNC1(cstate, abroadcast, Q_DST);
		case DLT_EN10MB:
		case DLT_NETANALYZER:
		case DLT_NETANALYZER_TRANSPARENT:
			b1 = FUNC9(cstate);
			b0 = FUNC3(cstate, ebroadcast, Q_DST);
			if (b1 != NULL)
				FUNC2(b1, b0);
			return b0;
		case DLT_FDDI:
			return FUNC4(cstate, ebroadcast, Q_DST);
		case DLT_IEEE802:
			return FUNC10(cstate, ebroadcast, Q_DST);
		case DLT_IEEE802_11:
		case DLT_PRISM_HEADER:
		case DLT_IEEE802_11_RADIO_AVS:
		case DLT_IEEE802_11_RADIO:
		case DLT_PPI:
			return FUNC11(cstate, ebroadcast, Q_DST);
		case DLT_IP_OVER_FC:
			return FUNC5(cstate, ebroadcast, Q_DST);
		default:
			FUNC0(cstate, "not a broadcast link");
		}
		break;

	case Q_IP:
		/*
		 * We treat a netmask of PCAP_NETMASK_UNKNOWN (0xffffffff)
		 * as an indication that we don't know the netmask, and fail
		 * in that case.
		 */
		if (cstate->netmask == PCAP_NETMASK_UNKNOWN)
			FUNC0(cstate, "netmask not known, so 'ip broadcast' not supported");
		b0 = FUNC6(cstate, ETHERTYPE_IP);
		hostmask = ~cstate->netmask;
		b1 = FUNC7(cstate, OR_LINKPL, 16, BPF_W, (bpf_int32)0, hostmask);
		b2 = FUNC7(cstate, OR_LINKPL, 16, BPF_W,
			      (bpf_int32)(~0 & hostmask), hostmask);
		FUNC8(b1, b2);
		FUNC2(b0, b2);
		return b2;
	}
	FUNC0(cstate, "only link-layer/IP broadcast filters supported");
	/* NOTREACHED */
}