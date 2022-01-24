#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int u_char ;
struct pim {int const pim_rsv; int const pim_cksum; int /*<<< orphan*/  pim_typever; } ;
struct ip {int const ip_vhl; int const ip_dst; int const ip_src; } ;
struct TYPE_11__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  enum checksum_status { ____Placeholder_checksum_status } checksum_status ;

/* Variables and functions */
#define  CORRECT 149 
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
#define  INCORRECT 148 
 int /*<<< orphan*/  FUNC2 (struct ip const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (int const,int) ; 
 int /*<<< orphan*/  FUNC6 (int const*) ; 
#define  PIMV2_HELLO_OPTION_ADDRESS_LIST 147 
#define  PIMV2_HELLO_OPTION_ADDRESS_LIST_OLD 146 
#define  PIMV2_HELLO_OPTION_BIDIR_CAP 145 
#define  PIMV2_HELLO_OPTION_DR_PRIORITY 144 
#define  PIMV2_HELLO_OPTION_DR_PRIORITY_OLD 143 
#define  PIMV2_HELLO_OPTION_GENID 142 
#define  PIMV2_HELLO_OPTION_HOLDTIME 141 
#define  PIMV2_HELLO_OPTION_LANPRUNEDELAY 140 
#define  PIMV2_HELLO_OPTION_REFRESH_CAP 139 
 int PIMV2_REGISTER_FLAG_LEN ; 
#define  PIMV2_TYPE_ASSERT 138 
#define  PIMV2_TYPE_BOOTSTRAP 137 
#define  PIMV2_TYPE_CANDIDATE_RP 136 
#define  PIMV2_TYPE_GRAFT 135 
#define  PIMV2_TYPE_GRAFT_ACK 134 
#define  PIMV2_TYPE_HELLO 133 
#define  PIMV2_TYPE_JOIN_PRUNE 132 
#define  PIMV2_TYPE_PRUNE_REFRESH 131 
#define  PIMV2_TYPE_REGISTER 130 
#define  PIMV2_TYPE_REGISTER_STOP 129 
 int FUNC7 (int /*<<< orphan*/ ) ; 
#define  UNVERIFIED 128 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int const*) ; 
 int FUNC11 (TYPE_1__*,int const*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*,int const*,int const*,int) ; 
 int /*<<< orphan*/  pimv2_group ; 
 int /*<<< orphan*/  pimv2_hello_option_values ; 
 int /*<<< orphan*/  pimv2_register_flag_values ; 
 int /*<<< orphan*/  pimv2_source ; 
 int /*<<< orphan*/  pimv2_unicast ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int const) ; 

__attribute__((used)) static void
FUNC16(netdissect_options *ndo,
            register const u_char *bp, register u_int len, const u_char *bp2)
{
	register const struct pim *pim = (const struct pim *)bp;
	int advance;
	enum checksum_status cksum_status;
	int pimv2_addr_len;

	if (len < 2)
		goto trunc;
	FUNC4(pim->pim_rsv);
	pimv2_addr_len = pim->pim_rsv;
	if (pimv2_addr_len != 0)
		FUNC3((ndo, ", RFC2117-encoding"));

	if (len < 4)
		goto trunc;
	FUNC4(pim->pim_cksum);
	FUNC3((ndo, ", cksum 0x%04x ", FUNC0(&pim->pim_cksum)));
	if (FUNC0(&pim->pim_cksum) == 0) {
		FUNC3((ndo, "(unverified)"));
	} else {
		if (FUNC7(pim->pim_typever) == PIMV2_TYPE_REGISTER) {
			/*
			 * The checksum only covers the packet header,
			 * not the encapsulated packet.
			 */
			cksum_status = FUNC12(ndo, bp, bp2, 8);
			if (cksum_status == INCORRECT) {
				/*
				 * To quote RFC 4601, "For interoperability
				 * reasons, a message carrying a checksum
				 * calculated over the entire PIM Register
				 * message should also be accepted."
				 */
				cksum_status = FUNC12(ndo, bp, bp2, len);
			}
		} else {
			/*
			 * The checksum covers the entire packet.
			 */
			cksum_status = FUNC12(ndo, bp, bp2, len);
		}
		switch (cksum_status) {

		case CORRECT:
			FUNC3((ndo, "(correct)"));
			break;

		case INCORRECT:
			FUNC3((ndo, "(incorrect)"));
			break;

		case UNVERIFIED:
			FUNC3((ndo, "(unverified)"));
			break;
		}
	}
	bp += 4;
	len -= 4;

	switch (FUNC7(pim->pim_typever)) {
	case PIMV2_TYPE_HELLO:
	    {
		uint16_t otype, olen;
		while (len > 0) {
			if (len < 4)
				goto trunc;
			FUNC5(bp[0], 4);
			otype = FUNC0(&bp[0]);
			olen = FUNC0(&bp[2]);
			FUNC3((ndo, "\n\t  %s Option (%u), length %u, Value: ",
			          FUNC14(pimv2_hello_option_values, "Unknown", otype),
			          otype,
			          olen));
			bp += 4;
			len -= 4;

			if (len < olen)
				goto trunc;
			FUNC5(bp[0], olen);
			switch (otype) {
			case PIMV2_HELLO_OPTION_HOLDTIME:
				if (olen != 2) {
					FUNC3((ndo, "ERROR: Option Length != 2 Bytes (%u)", olen));
				} else {
					FUNC15(ndo, FUNC0(bp));
				}
				break;

			case PIMV2_HELLO_OPTION_LANPRUNEDELAY:
				if (olen != 4) {
					FUNC3((ndo, "ERROR: Option Length != 4 Bytes (%u)", olen));
				} else {
					char t_bit;
					uint16_t lan_delay, override_interval;
					lan_delay = FUNC0(bp);
					override_interval = FUNC0(bp+2);
					t_bit = (lan_delay & 0x8000)? 1 : 0;
					lan_delay &= ~0x8000;
					FUNC3((ndo, "\n\t    T-bit=%d, LAN delay %dms, Override interval %dms",
					t_bit, lan_delay, override_interval));
				}
				break;

			case PIMV2_HELLO_OPTION_DR_PRIORITY_OLD:
			case PIMV2_HELLO_OPTION_DR_PRIORITY:
				switch (olen) {
				case 0:
					FUNC3((ndo, "Bi-Directional Capability (Old)"));
					break;
				case 4:
					FUNC3((ndo, "%u", FUNC1(bp)));
					break;
				default:
					FUNC3((ndo, "ERROR: Option Length != 4 Bytes (%u)", olen));
					break;
				}
				break;

			case PIMV2_HELLO_OPTION_GENID:
				if (olen != 4) {
					FUNC3((ndo, "ERROR: Option Length != 4 Bytes (%u)", olen));
				} else {
					FUNC3((ndo, "0x%08x", FUNC1(bp)));
				}
				break;

			case PIMV2_HELLO_OPTION_REFRESH_CAP:
				if (olen != 4) {
					FUNC3((ndo, "ERROR: Option Length != 4 Bytes (%u)", olen));
				} else {
					FUNC3((ndo, "v%d", *bp));
					if (*(bp+1) != 0) {
						FUNC3((ndo, ", interval "));
						FUNC15(ndo, *(bp+1));
					}
					if (FUNC0(bp+2) != 0) {
						FUNC3((ndo, " ?0x%04x?", FUNC0(bp+2)));
					}
				}
				break;

			case  PIMV2_HELLO_OPTION_BIDIR_CAP:
				break;

			case PIMV2_HELLO_OPTION_ADDRESS_LIST_OLD:
			case PIMV2_HELLO_OPTION_ADDRESS_LIST:
				if (ndo->ndo_vflag > 1) {
					const u_char *ptr = bp;
					u_int plen = len;
					while (ptr < (bp+olen)) {
						FUNC3((ndo, "\n\t    "));
						advance = FUNC11(ndo, ptr, plen, pimv2_unicast, pimv2_addr_len, 0);
						if (advance < 0)
							goto trunc;
						ptr += advance;
						plen -= advance;
					}
				}
				break;
			default:
				if (ndo->ndo_vflag <= 1)
					FUNC13(ndo, bp, "\n\t    ", olen);
				break;
			}
			/* do we want to see an additionally hexdump ? */
			if (ndo->ndo_vflag> 1)
				FUNC13(ndo, bp, "\n\t    ", olen);
			bp += olen;
			len -= olen;
		}
		break;
	    }

	case PIMV2_TYPE_REGISTER:
	{
		const struct ip *ip;

		if (len < 4)
			goto trunc;
		FUNC5(*bp, PIMV2_REGISTER_FLAG_LEN);

		FUNC3((ndo, ", Flags [ %s ]\n\t",
		          FUNC14(pimv2_register_flag_values,
		          "none",
		          FUNC1(bp))));

		bp += 4; len -= 4;
		/* encapsulated multicast packet */
		if (len == 0)
			goto trunc;
		ip = (const struct ip *)bp;
		FUNC4(ip->ip_vhl);
		switch (FUNC2(ip)) {
                case 0: /* Null header */
			FUNC4(ip->ip_dst);
			FUNC3((ndo, "IP-Null-header %s > %s",
			          FUNC10(ndo, &ip->ip_src),
			          FUNC10(ndo, &ip->ip_dst)));
			break;

		case 4:	/* IPv4 */
			FUNC9(ndo, bp, len);
			break;

		case 6:	/* IPv6 */
			FUNC8(ndo, bp, len);
			break;

		default:
			FUNC3((ndo, "IP ver %d", FUNC2(ip)));
			break;
		}
		break;
	}

	case PIMV2_TYPE_REGISTER_STOP:
		FUNC3((ndo, " group="));
		if ((advance = FUNC11(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
			goto trunc;
		bp += advance; len -= advance;
		FUNC3((ndo, " source="));
		if ((advance = FUNC11(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
			goto trunc;
		bp += advance; len -= advance;
		break;

	case PIMV2_TYPE_JOIN_PRUNE:
	case PIMV2_TYPE_GRAFT:
	case PIMV2_TYPE_GRAFT_ACK:


        /*
         * 0                   1                   2                   3
         *   0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |PIM Ver| Type  | Addr length   |           Checksum            |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |             Unicast-Upstream Neighbor Address                 |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |  Reserved     | Num groups    |          Holdtime             |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |            Encoded-Multicast Group Address-1                  |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |   Number of Joined  Sources   |   Number of Pruned Sources    |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |               Encoded-Joined Source Address-1                 |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |                             .                                 |
         *  |                             .                                 |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |               Encoded-Joined Source Address-n                 |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |               Encoded-Pruned Source Address-1                 |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |                             .                                 |
         *  |                             .                                 |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |               Encoded-Pruned Source Address-n                 |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |                           .                                   |
         *  |                           .                                   |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         *  |                Encoded-Multicast Group Address-n              |
         *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
         */

	    {
		uint8_t ngroup;
		uint16_t holdtime;
		uint16_t njoin;
		uint16_t nprune;
		int i, j;

		if (FUNC7(pim->pim_typever) != 7) {	/*not for Graft-ACK*/
			FUNC3((ndo, ", upstream-neighbor: "));
			if ((advance = FUNC11(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
				goto trunc;
			bp += advance; len -= advance;
		}
		if (len < 4)
			goto trunc;
		FUNC5(*bp, 4);
		ngroup = bp[1];
		holdtime = FUNC0(&bp[2]);
		FUNC3((ndo, "\n\t  %u group(s)", ngroup));
		if (FUNC7(pim->pim_typever) != 7) {	/*not for Graft-ACK*/
			FUNC3((ndo, ", holdtime: "));
			if (holdtime == 0xffff)
				FUNC3((ndo, "infinite"));
			else
				FUNC15(ndo, holdtime);
		}
		bp += 4; len -= 4;
		for (i = 0; i < ngroup; i++) {
			FUNC3((ndo, "\n\t    group #%u: ", i+1));
			if ((advance = FUNC11(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
				goto trunc;
			bp += advance; len -= advance;
			if (len < 4)
				goto trunc;
			FUNC5(*bp, 4);
			njoin = FUNC0(&bp[0]);
			nprune = FUNC0(&bp[2]);
			FUNC3((ndo, ", joined sources: %u, pruned sources: %u", njoin, nprune));
			bp += 4; len -= 4;
			for (j = 0; j < njoin; j++) {
				FUNC3((ndo, "\n\t      joined source #%u: ", j+1));
				if ((advance = FUNC11(ndo, bp, len, pimv2_source, pimv2_addr_len, 0)) < 0)
					goto trunc;
				bp += advance; len -= advance;
			}
			for (j = 0; j < nprune; j++) {
				FUNC3((ndo, "\n\t      pruned source #%u: ", j+1));
				if ((advance = FUNC11(ndo, bp, len, pimv2_source, pimv2_addr_len, 0)) < 0)
					goto trunc;
				bp += advance; len -= advance;
			}
		}
		break;
	    }

	case PIMV2_TYPE_BOOTSTRAP:
	{
		int i, j, frpcnt;

		/* Fragment Tag, Hash Mask len, and BSR-priority */
		if (len < 2)
			goto trunc;
		FUNC6(bp);
		FUNC3((ndo, " tag=%x", FUNC0(bp)));
		bp += 2;
		len -= 2;
		if (len < 1)
			goto trunc;
		FUNC4(bp[0]);
		FUNC3((ndo, " hashmlen=%d", bp[0]));
		if (len < 2)
			goto trunc;
		FUNC4(bp[2]);
		FUNC3((ndo, " BSRprio=%d", bp[1]));
		bp += 2;
		len -= 2;

		/* Encoded-Unicast-BSR-Address */
		FUNC3((ndo, " BSR="));
		if ((advance = FUNC11(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
			goto trunc;
		bp += advance;
		len -= advance;

		for (i = 0; len > 0; i++) {
			/* Encoded-Group Address */
			FUNC3((ndo, " (group%d: ", i));
			if ((advance = FUNC11(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
				goto trunc;
			bp += advance;
			len -= advance;

			/* RP-Count, Frag RP-Cnt, and rsvd */
			if (len < 1)
				goto trunc;
			FUNC4(bp[0]);
			FUNC3((ndo, " RPcnt=%d", bp[0]));
			if (len < 2)
				goto trunc;
			FUNC4(bp[1]);
			FUNC3((ndo, " FRPcnt=%d", frpcnt = bp[1]));
			if (len < 4)
				goto trunc;
			bp += 4;
			len -= 4;

			for (j = 0; j < frpcnt && len > 0; j++) {
				/* each RP info */
				FUNC3((ndo, " RP%d=", j));
				if ((advance = FUNC11(ndo, bp, len,
								pimv2_unicast,
								pimv2_addr_len,
								0)) < 0)
					goto trunc;
				bp += advance;
				len -= advance;

				if (len < 2)
					goto trunc;
				FUNC6(bp);
				FUNC3((ndo, ",holdtime="));
				FUNC15(ndo, FUNC0(bp));
				if (len < 3)
					goto trunc;
				FUNC4(bp[2]);
				FUNC3((ndo, ",prio=%d", bp[2]));
				if (len < 4)
					goto trunc;
				bp += 4;
				len -= 4;
			}
			FUNC3((ndo, ")"));
		}
		break;
	}
	case PIMV2_TYPE_ASSERT:
		FUNC3((ndo, " group="));
		if ((advance = FUNC11(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
			goto trunc;
		bp += advance; len -= advance;
		FUNC3((ndo, " src="));
		if ((advance = FUNC11(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
			goto trunc;
		bp += advance; len -= advance;
		if (len < 8)
			goto trunc;
		FUNC5(*bp, 8);
		if (bp[0] & 0x80)
			FUNC3((ndo, " RPT"));
		FUNC3((ndo, " pref=%u", FUNC1(&bp[0]) & 0x7fffffff));
		FUNC3((ndo, " metric=%u", FUNC1(&bp[4])));
		break;

	case PIMV2_TYPE_CANDIDATE_RP:
	{
		int i, pfxcnt;

		/* Prefix-Cnt, Priority, and Holdtime */
		if (len < 1)
			goto trunc;
		FUNC4(bp[0]);
		FUNC3((ndo, " prefix-cnt=%d", bp[0]));
		pfxcnt = bp[0];
		if (len < 2)
			goto trunc;
		FUNC4(bp[1]);
		FUNC3((ndo, " prio=%d", bp[1]));
		if (len < 4)
			goto trunc;
		FUNC6(&bp[2]);
		FUNC3((ndo, " holdtime="));
		FUNC15(ndo, FUNC0(&bp[2]));
		bp += 4;
		len -= 4;

		/* Encoded-Unicast-RP-Address */
		FUNC3((ndo, " RP="));
		if ((advance = FUNC11(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
			goto trunc;
		bp += advance;
		len -= advance;

		/* Encoded-Group Addresses */
		for (i = 0; i < pfxcnt && len > 0; i++) {
			FUNC3((ndo, " Group%d=", i));
			if ((advance = FUNC11(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
				goto trunc;
			bp += advance;
			len -= advance;
		}
		break;
	}

	case PIMV2_TYPE_PRUNE_REFRESH:
		FUNC3((ndo, " src="));
		if ((advance = FUNC11(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
			goto trunc;
		bp += advance;
		len -= advance;
		FUNC3((ndo, " grp="));
		if ((advance = FUNC11(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
			goto trunc;
		bp += advance;
		len -= advance;
		FUNC3((ndo, " forwarder="));
		if ((advance = FUNC11(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
			goto trunc;
		bp += advance;
		len -= advance;
		if (len < 2)
			goto trunc;
		FUNC6(bp);
		FUNC3((ndo, " TUNR "));
		FUNC15(ndo, FUNC0(bp));
		break;


	 default:
		FUNC3((ndo, " [type %d]", FUNC7(pim->pim_typever)));
		break;
	}

	return;

trunc:
	FUNC3((ndo, "[|pim]"));
}