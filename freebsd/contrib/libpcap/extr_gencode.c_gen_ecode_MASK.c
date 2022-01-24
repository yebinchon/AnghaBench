#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct qual {scalar_t__ addr; scalar_t__ proto; scalar_t__ dir; } ;
struct block {int dummy; } ;
struct TYPE_10__ {int linktype; } ;
typedef  TYPE_1__ compiler_state_t ;

/* Variables and functions */
#define  DLT_EN10MB 138 
#define  DLT_FDDI 137 
#define  DLT_IEEE802 136 
#define  DLT_IEEE802_11 135 
#define  DLT_IEEE802_11_RADIO 134 
#define  DLT_IEEE802_11_RADIO_AVS 133 
#define  DLT_IP_OVER_FC 132 
#define  DLT_NETANALYZER 131 
#define  DLT_NETANALYZER_TRANSPARENT 130 
#define  DLT_PPI 129 
#define  DLT_PRISM_HEADER 128 
 scalar_t__ Q_DEFAULT ; 
 scalar_t__ Q_HOST ; 
 scalar_t__ Q_LINK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct block*,struct block*) ; 
 struct block* FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 struct block* FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 struct block* FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 struct block* FUNC5 (TYPE_1__*) ; 
 struct block* FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 struct block* FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 

struct block *
FUNC8(compiler_state_t *cstate, const u_char *eaddr, struct qual q)
{
	struct block *b, *tmp;

	if ((q.addr == Q_HOST || q.addr == Q_DEFAULT) && q.proto == Q_LINK) {
		switch (cstate->linktype) {
		case DLT_EN10MB:
		case DLT_NETANALYZER:
		case DLT_NETANALYZER_TRANSPARENT:
			tmp = FUNC5(cstate);
			b = FUNC2(cstate, eaddr, (int)q.dir);
			if (tmp != NULL)
				FUNC1(tmp, b);
			return b;
		case DLT_FDDI:
			return FUNC3(cstate, eaddr, (int)q.dir);
		case DLT_IEEE802:
			return FUNC6(cstate, eaddr, (int)q.dir);
		case DLT_IEEE802_11:
		case DLT_PRISM_HEADER:
		case DLT_IEEE802_11_RADIO_AVS:
		case DLT_IEEE802_11_RADIO:
		case DLT_PPI:
			return FUNC7(cstate, eaddr, (int)q.dir);
		case DLT_IP_OVER_FC:
			return FUNC4(cstate, eaddr, (int)q.dir);
		default:
			FUNC0(cstate, "ethernet addresses supported only on ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel");
			break;
		}
	}
	FUNC0(cstate, "ethernet address used in non-ether expression");
	/* NOTREACHED */
}