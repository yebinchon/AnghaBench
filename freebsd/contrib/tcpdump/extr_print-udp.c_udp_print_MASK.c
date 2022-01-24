#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_59__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  const u_char ;
struct udphdr {scalar_t__ uh_dport; scalar_t__ uh_sport; scalar_t__ uh_ulen; scalar_t__ uh_sum; } ;
struct sunrpc_msg {scalar_t__ rm_direction; scalar_t__ rm_xid; } ;
struct ip6_hdr {scalar_t__ ip6_plen; } ;
struct ip {int dummy; } ;
struct LAP {scalar_t__ type; } ;
struct TYPE_59__ {int ndo_packettype; int ndo_vflag; int /*<<< orphan*/  ndo_qflag; int /*<<< orphan*/  ndo_Kflag; int /*<<< orphan*/  const* ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  enum sunrpc_msg_type { ____Placeholder_sunrpc_msg_type } sunrpc_msg_type ;

/* Variables and functions */
 int /*<<< orphan*/  AHCP_PORT ; 
 int /*<<< orphan*/  AODV_PORT ; 
 int /*<<< orphan*/  BABEL_PORT ; 
 int /*<<< orphan*/  BABEL_PORT_OLD ; 
 int BFD_CONTROL_PORT ; 
 int BFD_ECHO_PORT ; 
 int /*<<< orphan*/  BOOTPC_PORT ; 
 int /*<<< orphan*/  BOOTPS_PORT ; 
 int /*<<< orphan*/  CISCO_AUTORP_PORT ; 
 int /*<<< orphan*/  DHCP6_CLI_PORT ; 
 int /*<<< orphan*/  DHCP6_SERV_PORT ; 
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  GENEVE_PORT ; 
 int /*<<< orphan*/  HNCP_PORT ; 
 int HSRP_PORT ; 
 int FUNC2 (struct ip const*) ; 
 int /*<<< orphan*/  ISAKMP_PORT ; 
 int /*<<< orphan*/  ISAKMP_PORT_NATT ; 
 int /*<<< orphan*/  ISAKMP_PORT_USER1 ; 
 int /*<<< orphan*/  ISAKMP_PORT_USER2 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERBEROS_PORT ; 
 int /*<<< orphan*/  KERBEROS_SEC_PORT ; 
 int /*<<< orphan*/  L2TP_PORT ; 
 int /*<<< orphan*/  LDP_PORT ; 
 int /*<<< orphan*/  LISP_CONTROL_PORT ; 
 int /*<<< orphan*/  LMP_PORT ; 
 int LWAPP_CONTROL_PORT ; 
 int /*<<< orphan*/  LWAPP_DATA_PORT ; 
 int /*<<< orphan*/  LWRES_PORT ; 
 int /*<<< orphan*/  MPLS_LSP_PING_PORT ; 
 int /*<<< orphan*/  MULTICASTDNS_PORT ; 
 int /*<<< orphan*/  NAMESERVER_PORT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  NETBIOS_DGRAM_PORT ; 
 int /*<<< orphan*/  NETBIOS_NS_PORT ; 
 int NFS_PORT ; 
 int /*<<< orphan*/  NTP_PORT ; 
 int /*<<< orphan*/  OLSR_PORT ; 
 int /*<<< orphan*/  OTV_PORT ; 
#define  PT_AODV 141 
#define  PT_CNFP 140 
#define  PT_LMP 139 
#define  PT_PGM 138 
#define  PT_PGM_ZMTP1 137 
#define  PT_RADIUS 136 
#define  PT_RPC 135 
#define  PT_RTCP 134 
#define  PT_RTP 133 
#define  PT_SNMP 132 
#define  PT_TFTP 131 
#define  PT_VAT 130 
#define  PT_VXLAN 129 
#define  PT_WB 128 
 int /*<<< orphan*/  RADIUS_ACCOUNTING_PORT ; 
 int /*<<< orphan*/  RADIUS_CISCO_COA_PORT ; 
 int /*<<< orphan*/  RADIUS_COA_PORT ; 
 int /*<<< orphan*/  RADIUS_NEW_ACCOUNTING_PORT ; 
 int /*<<< orphan*/  RADIUS_NEW_PORT ; 
 int /*<<< orphan*/  RADIUS_PORT ; 
 int /*<<< orphan*/  RIPNG_PORT ; 
 int /*<<< orphan*/  RIP_PORT ; 
 int RX_PORT_HIGH ; 
 int RX_PORT_LOW ; 
 int /*<<< orphan*/  SFLOW_PORT ; 
 int /*<<< orphan*/  SIP_PORT ; 
 int /*<<< orphan*/  SNMPTRAP_PORT ; 
 int /*<<< orphan*/  SNMP_PORT ; 
 int SUNRPC_CALL ; 
 int SUNRPC_PORT ; 
 int SUNRPC_REPLY ; 
 int /*<<< orphan*/  SYSLOG_PORT ; 
 int /*<<< orphan*/  TFTP_PORT ; 
 int /*<<< orphan*/  TIMED_PORT ; 
 int VAT_PORT ; 
 int /*<<< orphan*/  VQP_PORT ; 
 int /*<<< orphan*/  VXLAN_GPE_PORT ; 
 int /*<<< orphan*/  VXLAN_PORT ; 
 int WB_PORT ; 
 int /*<<< orphan*/  ZEPHYR_CLT_PORT ; 
 int /*<<< orphan*/  ZEPHYR_SRV_PORT ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,void const*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,void const*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ lapDDP ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_1__*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_1__*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC45 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_1__*,void const*,int,struct udphdr const*) ; 
 int /*<<< orphan*/  FUNC47 (TYPE_1__*,void const*,int,int,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC48 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC49 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC50 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC51 (TYPE_1__*,int,int,...) ; 
 int /*<<< orphan*/  FUNC52 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC53 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC54 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC55 (TYPE_1__*,struct ip6_hdr const*,struct udphdr const*,int) ; 
 int FUNC56 (TYPE_1__*,struct ip const*,struct udphdr const*,int) ; 
 int /*<<< orphan*/  udp_tstr ; 
 int /*<<< orphan*/  FUNC57 (TYPE_1__*,struct ip const*,int,int) ; 
 int /*<<< orphan*/  FUNC58 (TYPE_1__*,void const*,struct udphdr const*) ; 
 int /*<<< orphan*/  FUNC59 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC60 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC61 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC62 (TYPE_1__*,void const*,int) ; 
 int /*<<< orphan*/  FUNC63 (TYPE_1__*,void const*,int) ; 

void
FUNC64(netdissect_options *ndo, register const u_char *bp, u_int length,
	  register const u_char *bp2, int fragmented)
{
	register const struct udphdr *up;
	register const struct ip *ip;
	register const u_char *cp;
	register const u_char *ep = bp + length;
	uint16_t sport, dport, ulen;
	register const struct ip6_hdr *ip6;

	if (ep > ndo->ndo_snapend)
		ep = ndo->ndo_snapend;
	up = (const struct udphdr *)bp;
	ip = (const struct ip *)bp2;
	if (FUNC2(ip) == 6)
		ip6 = (const struct ip6_hdr *)bp2;
	else
		ip6 = NULL;
	if (!FUNC5(up->uh_dport)) {
		FUNC57(ndo, ip, -1, -1);
		goto trunc;
	}

	sport = FUNC0(&up->uh_sport);
	dport = FUNC0(&up->uh_dport);

	if (length < sizeof(struct udphdr)) {
		FUNC57(ndo, ip, sport, dport);
		FUNC4((ndo, "truncated-udp %d", length));
		return;
	}
	if (!FUNC5(up->uh_ulen)) {
		FUNC57(ndo, ip, sport, dport);
		goto trunc;
	}
	ulen = FUNC0(&up->uh_ulen);
	if (ulen < sizeof(struct udphdr)) {
		FUNC57(ndo, ip, sport, dport);
		FUNC4((ndo, "truncated-udplength %d", ulen));
		return;
	}
	ulen -= sizeof(struct udphdr);
	length -= sizeof(struct udphdr);
	if (ulen < length)
		length = ulen;

	cp = (const u_char *)(up + 1);
	if (cp > ndo->ndo_snapend) {
		FUNC57(ndo, ip, sport, dport);
		goto trunc;
	}

	if (ndo->ndo_packettype) {
		register const struct sunrpc_msg *rp;
		enum sunrpc_msg_type direction;

		switch (ndo->ndo_packettype) {

		case PT_VAT:
			FUNC57(ndo, ip, sport, dport);
			FUNC58(ndo, (const void *)(up + 1), up);
			break;

		case PT_WB:
			FUNC57(ndo, ip, sport, dport);
			FUNC62(ndo, (const void *)(up + 1), length);
			break;

		case PT_RPC:
			rp = (const struct sunrpc_msg *)(up + 1);
			direction = (enum sunrpc_msg_type)FUNC1(&rp->rm_direction);
			if (direction == SUNRPC_CALL)
				FUNC51(ndo, (const u_char *)rp, length,
				    (const u_char *)ip);
			else
				FUNC34(ndo, (const u_char *)rp, length,
				    (const u_char *)ip);			/*XXX*/
			break;

		case PT_RTP:
			FUNC57(ndo, ip, sport, dport);
			FUNC46(ndo, (const void *)(up + 1), length, up);
			break;

		case PT_RTCP:
			FUNC57(ndo, ip, sport, dport);
			while (cp < ep)
				cp = FUNC45(ndo, cp, ep);
			break;

		case PT_SNMP:
			FUNC57(ndo, ip, sport, dport);
			FUNC50(ndo, (const u_char *)(up + 1), length);
			break;

		case PT_CNFP:
			FUNC57(ndo, ip, sport, dport);
			FUNC14(ndo, cp);
			break;

		case PT_TFTP:
			FUNC57(ndo, ip, sport, dport);
			FUNC53(ndo, cp, length);
			break;

		case PT_AODV:
			FUNC57(ndo, ip, sport, dport);
			FUNC8(ndo, (const u_char *)(up + 1), length,
			    ip6 != NULL);
			break;

		case PT_RADIUS:
			FUNC57(ndo, ip, sport, dport);
			FUNC42(ndo, cp, length);
			break;

		case PT_VXLAN:
			FUNC57(ndo, ip, sport, dport);
			FUNC61(ndo, (const u_char *)(up + 1), length);
			break;

		case PT_PGM:
		case PT_PGM_ZMTP1:
			FUNC57(ndo, ip, sport, dport);
			FUNC41(ndo, cp, length, bp2);
			break;
		case PT_LMP:
			FUNC57(ndo, ip, sport, dport);
			FUNC27(ndo, cp, length);
			break;
		}
		return;
	}

	FUNC57(ndo, ip, sport, dport);
	if (!ndo->ndo_qflag) {
		register const struct sunrpc_msg *rp;
		enum sunrpc_msg_type direction;

		rp = (const struct sunrpc_msg *)(up + 1);
		if (FUNC5(rp->rm_direction)) {
			direction = (enum sunrpc_msg_type)FUNC1(&rp->rm_direction);
			if (dport == NFS_PORT && direction == SUNRPC_CALL) {
				FUNC4((ndo, "NFS request xid %u ", FUNC1(&rp->rm_xid)));
				FUNC36(ndo, (const u_char *)rp, length,
				    (const u_char *)ip);
				return;
			}
			if (sport == NFS_PORT && direction == SUNRPC_REPLY) {
				FUNC4((ndo, "NFS reply xid %u ", FUNC1(&rp->rm_xid)));
				FUNC35(ndo, (const u_char *)rp, length,
				    (const u_char *)ip);
				return;
			}
#ifdef notdef
			if (dport == SUNRPC_PORT && direction == SUNRPC_CALL) {
				sunrpcrequest_print((const u_char *)rp, length, (const u_char *)ip);
				return;
			}
#endif
		}
	}

	if (ndo->ndo_vflag && !ndo->ndo_Kflag && !fragmented) {
                /* Check the checksum, if possible. */
                uint16_t sum, udp_sum;

		/*
		 * XXX - do this even if vflag == 1?
		 * TCP does, and we do so for UDP-over-IPv6.
		 */
	        if (FUNC2(ip) == 4 && (ndo->ndo_vflag > 1)) {
			udp_sum = FUNC0(&up->uh_sum);
			if (udp_sum == 0) {
				FUNC4((ndo, "[no cksum] "));
			} else if (FUNC6(cp[0], length)) {
				sum = FUNC56(ndo, ip, up, length + sizeof(struct udphdr));

	                        if (sum != 0) {
					FUNC4((ndo, "[bad udp cksum 0x%04x -> 0x%04x!] ",
					    udp_sum,
					    FUNC19(udp_sum, sum)));
				} else
					FUNC4((ndo, "[udp sum ok] "));
			}
		}
		else if (FUNC2(ip) == 6 && ip6->ip6_plen) {
			/* for IPv6, UDP checksum is mandatory */
			if (FUNC6(cp[0], length)) {
				sum = FUNC55(ndo, ip6, up, length + sizeof(struct udphdr));
				udp_sum = FUNC0(&up->uh_sum);

	                        if (sum != 0) {
					FUNC4((ndo, "[bad udp cksum 0x%04x -> 0x%04x!] ",
					    udp_sum,
					    FUNC19(udp_sum, sum)));
				} else
					FUNC4((ndo, "[udp sum ok] "));
			}
		}
	}

	if (!ndo->ndo_qflag) {
		if (FUNC3(NAMESERVER_PORT))
			FUNC37(ndo, (const u_char *)(up + 1), length, 0);
		else if (FUNC3(MULTICASTDNS_PORT))
			FUNC37(ndo, (const u_char *)(up + 1), length, 1);
		else if (FUNC3(TIMED_PORT))
			FUNC54(ndo, (const u_char *)(up + 1));
		else if (FUNC3(TFTP_PORT))
			FUNC53(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(BOOTPC_PORT) || FUNC3(BOOTPS_PORT))
			FUNC12(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(RIP_PORT))
			FUNC43(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(AODV_PORT))
			FUNC8(ndo, (const u_char *)(up + 1), length,
			    ip6 != NULL);
	        else if (FUNC3(ISAKMP_PORT))
			 FUNC20(ndo, (const u_char *)(up + 1), length, bp2);
	        else if (FUNC3(ISAKMP_PORT_NATT))
			 FUNC21(ndo, (const u_char *)(up + 1), length, bp2);
#if 1 /*???*/
	        else if (FUNC3(ISAKMP_PORT_USER1) || FUNC3(ISAKMP_PORT_USER2))
			FUNC20(ndo, (const u_char *)(up + 1), length, bp2);
#endif
		else if (FUNC3(SNMP_PORT) || FUNC3(SNMPTRAP_PORT))
			FUNC50(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(NTP_PORT))
			FUNC38(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(KERBEROS_PORT) || FUNC3(KERBEROS_SEC_PORT))
			FUNC22(ndo, (const void *)(up + 1));
		else if (FUNC3(L2TP_PORT))
			FUNC23(ndo, (const u_char *)(up + 1), length);
#ifdef ENABLE_SMB
		else if (IS_SRC_OR_DST_PORT(NETBIOS_NS_PORT))
			nbt_udp137_print(ndo, (const u_char *)(up + 1), length);
		else if (IS_SRC_OR_DST_PORT(NETBIOS_DGRAM_PORT))
			nbt_udp138_print(ndo, (const u_char *)(up + 1), length);
#endif
		else if (dport == VAT_PORT)
			FUNC58(ndo, (const void *)(up + 1), up);
		else if (FUNC3(ZEPHYR_SRV_PORT) || FUNC3(ZEPHYR_CLT_PORT))
			FUNC63(ndo, (const void *)(up + 1), length);
		/*
		 * Since there are 10 possible ports to check, I think
		 * a <> test would be more efficient
		 */
		else if ((sport >= RX_PORT_LOW && sport <= RX_PORT_HIGH) ||
			 (dport >= RX_PORT_LOW && dport <= RX_PORT_HIGH))
			FUNC47(ndo, (const void *)(up + 1), length, sport, dport,
				 (const u_char *) ip);
		else if (FUNC3(RIPNG_PORT))
			FUNC44(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(DHCP6_SERV_PORT) || FUNC3(DHCP6_CLI_PORT))
			FUNC15(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(AHCP_PORT))
			FUNC7(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(BABEL_PORT) || FUNC3(BABEL_PORT_OLD))
			FUNC10(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(HNCP_PORT))
			FUNC17(ndo, (const u_char *)(up + 1), length);
		/*
		 * Kludge in test for whiteboard packets.
		 */
		else if (dport == WB_PORT)
			FUNC62(ndo, (const void *)(up + 1), length);
		else if (FUNC3(CISCO_AUTORP_PORT))
			FUNC13(ndo, (const void *)(up + 1), length);
		else if (FUNC3(RADIUS_PORT) ||
			 FUNC3(RADIUS_NEW_PORT) ||
			 FUNC3(RADIUS_ACCOUNTING_PORT) ||
			 FUNC3(RADIUS_NEW_ACCOUNTING_PORT) ||
			 FUNC3(RADIUS_CISCO_COA_PORT) ||
			 FUNC3(RADIUS_COA_PORT) )
			FUNC42(ndo, (const u_char *)(up+1), length);
		else if (dport == HSRP_PORT)
			FUNC18(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(LWRES_PORT))
			FUNC31(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(LDP_PORT))
			FUNC24(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(OLSR_PORT))
			FUNC39(ndo, (const u_char *)(up + 1), length,
					(FUNC2(ip) == 6) ? 1 : 0);
		else if (FUNC3(MPLS_LSP_PING_PORT))
			FUNC28(ndo, (const u_char *)(up + 1), length);
		else if (dport == BFD_CONTROL_PORT ||
			 dport == BFD_ECHO_PORT )
			FUNC11(ndo, (const u_char *)(up+1), length, dport);
                else if (FUNC3(LMP_PORT))
			FUNC27(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(VQP_PORT))
			FUNC59(ndo, (const u_char *)(up + 1), length);
                else if (FUNC3(SFLOW_PORT))
                        FUNC48(ndo, (const u_char *)(up + 1), length);
	        else if (dport == LWAPP_CONTROL_PORT)
			FUNC29(ndo, (const u_char *)(up + 1), length, 1);
                else if (sport == LWAPP_CONTROL_PORT)
                        FUNC29(ndo, (const u_char *)(up + 1), length, 0);
                else if (FUNC3(LWAPP_DATA_PORT))
                        FUNC30(ndo, (const u_char *)(up + 1), length);
                else if (FUNC3(SIP_PORT))
			FUNC49(ndo, (const u_char *)(up + 1), length);
                else if (FUNC3(SYSLOG_PORT))
			FUNC52(ndo, (const u_char *)(up + 1), length);
                else if (FUNC3(OTV_PORT))
			FUNC40(ndo, (const u_char *)(up + 1), length);
                else if (FUNC3(VXLAN_PORT))
			FUNC61(ndo, (const u_char *)(up + 1), length);
                else if (FUNC3(GENEVE_PORT))
			FUNC16(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(LISP_CONTROL_PORT))
			FUNC25(ndo, (const u_char *)(up + 1), length);
		else if (FUNC3(VXLAN_GPE_PORT))
			FUNC60(ndo, (const u_char *)(up + 1), length);
		else if (FUNC5(((const struct LAP *)cp)->type) &&
		    ((const struct LAP *)cp)->type == lapDDP &&
		    (FUNC9(sport) || FUNC9(dport))) {
			if (ndo->ndo_vflag)
				FUNC4((ndo, "kip "));
			FUNC26(ndo, cp, length);
		} else {
			if (ulen > length)
				FUNC4((ndo, "UDP, bad length %u > %u",
				    ulen, length));
			else
				FUNC4((ndo, "UDP, length %u", ulen));
		}
	} else {
		if (ulen > length)
			FUNC4((ndo, "UDP, bad length %u > %u",
			    ulen, length));
		else
			FUNC4((ndo, "UDP, length %u", ulen));
	}
	return;

trunc:
	FUNC4((ndo, "%s", udp_tstr));
}