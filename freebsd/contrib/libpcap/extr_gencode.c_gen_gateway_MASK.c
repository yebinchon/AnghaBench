#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_14__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct block {int dummy; } ;
struct addrinfo {TYPE_1__* ai_addr; struct addrinfo* ai_next; } ;
struct TYPE_15__ {int /*<<< orphan*/  linktype; } ;
typedef  TYPE_3__ compiler_state_t ;
struct TYPE_13__ {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
#define  DLT_EN10MB 143 
#define  DLT_FDDI 142 
#define  DLT_IEEE802 141 
#define  DLT_IEEE802_11 140 
#define  DLT_IEEE802_11_RADIO 139 
#define  DLT_IEEE802_11_RADIO_AVS 138 
#define  DLT_IP_OVER_FC 137 
#define  DLT_NETANALYZER 136 
#define  DLT_NETANALYZER_TRANSPARENT 135 
#define  DLT_PPI 134 
#define  DLT_PRISM_HEADER 133 
#define  DLT_SUNATM 132 
#define  Q_ARP 131 
#define  Q_DEFAULT 130 
 int /*<<< orphan*/  Q_HOST ; 
#define  Q_IP 129 
 int /*<<< orphan*/  Q_OR ; 
#define  Q_RARP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct block*,struct block*) ; 
 struct block* FUNC2 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct block* FUNC3 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct block* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct block* FUNC5 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct block*) ; 
 int /*<<< orphan*/  FUNC7 (struct block*,struct block*) ; 
 struct block* FUNC8 (TYPE_3__*) ; 
 struct block* FUNC9 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct block* FUNC10 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct block *
FUNC12(compiler_state_t *cstate, const u_char *eaddr,
    struct addrinfo *alist, int proto, int dir)
{
	struct block *b0, *b1, *tmp;
	struct addrinfo *ai;
	struct sockaddr_in *sin;

	if (dir != 0)
		FUNC0(cstate, "direction applied to 'gateway'");

	switch (proto) {
	case Q_DEFAULT:
	case Q_IP:
	case Q_ARP:
	case Q_RARP:
		switch (cstate->linktype) {
		case DLT_EN10MB:
		case DLT_NETANALYZER:
		case DLT_NETANALYZER_TRANSPARENT:
			b1 = FUNC8(cstate);
			b0 = FUNC2(cstate, eaddr, Q_OR);
			if (b1 != NULL)
				FUNC1(b1, b0);
			break;
		case DLT_FDDI:
			b0 = FUNC3(cstate, eaddr, Q_OR);
			break;
		case DLT_IEEE802:
			b0 = FUNC9(cstate, eaddr, Q_OR);
			break;
		case DLT_IEEE802_11:
		case DLT_PRISM_HEADER:
		case DLT_IEEE802_11_RADIO_AVS:
		case DLT_IEEE802_11_RADIO:
		case DLT_PPI:
			b0 = FUNC10(cstate, eaddr, Q_OR);
			break;
		case DLT_SUNATM:
			/*
			 * This is LLC-multiplexed traffic; if it were
			 * LANE, cstate->linktype would have been set to
			 * DLT_EN10MB.
			 */
			FUNC0(cstate,
			    "'gateway' supported only on ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel");
			break;
		case DLT_IP_OVER_FC:
			b0 = FUNC5(cstate, eaddr, Q_OR);
			break;
		default:
			FUNC0(cstate,
			    "'gateway' supported only on ethernet/FDDI/token ring/802.11/ATM LANE/Fibre Channel");
		}
		b1 = NULL;
		for (ai = alist; ai != NULL; ai = ai->ai_next) {
			/*
			 * Does it have an address?
			 */
			if (ai->ai_addr != NULL) {
				/*
				 * Yes.  Is it an IPv4 address?
				 */
				if (ai->ai_addr->sa_family == AF_INET) {
					/*
					 * Generate an entry for it.
					 */
					sin = (struct sockaddr_in *)ai->ai_addr;
					tmp = FUNC4(cstate,
					    FUNC11(sin->sin_addr.s_addr),
					    0xffffffff, proto, Q_OR, Q_HOST);
					/*
					 * Is it the *first* IPv4 address?
					 */
					if (b1 == NULL) {
						/*
						 * Yes, so start with it.
						 */
						b1 = tmp;
					} else {
						/*
						 * No, so OR it into the
						 * existing set of
						 * addresses.
						 */
						FUNC7(b1, tmp);
						b1 = tmp;
					}
				}
			}
		}
		if (b1 == NULL) {
			/*
			 * No IPv4 addresses found.
			 */
			return (NULL);
		}
		FUNC6(b1);
		FUNC1(b0, b1);
		return b1;
	}
	FUNC0(cstate, "illegal modifier of 'gateway'");
	/* NOTREACHED */
}