#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  size_t uint16_t ;
typedef  int u_int ;
typedef  scalar_t__ u_char ;
struct dhcp6opt {scalar_t__ const dh6opt_type; scalar_t__ const dh6opt_len; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
#define  DH6OPT_AFTR_NAME 178 
#define  DH6OPT_AUTH 177 
#define  DH6OPT_AUTHALG_HMACMD5 176 
#define  DH6OPT_AUTHPROTO_DELAYED 175 
#define  DH6OPT_AUTHPROTO_RECONFIG 174 
#define  DH6OPT_AUTHRDM_MONOCOUNTER 173 
#define  DH6OPT_AUTHRECONFIG_HMACMD5 172 
#define  DH6OPT_AUTHRECONFIG_KEY 171 
#define  DH6OPT_BCMCS_SERVER_A 170 
#define  DH6OPT_CLIENTID 169 
#define  DH6OPT_CLIENT_DATA 168 
#define  DH6OPT_CLT_TIME 167 
#define  DH6OPT_DNS_SERVERS 166 
#define  DH6OPT_DOMAIN_LIST 165 
#define  DH6OPT_ELAPSED_TIME 164 
#define  DH6OPT_ERO 163 
#define  DH6OPT_IA_ADDR 162 
#define  DH6OPT_IA_NA 161 
#define  DH6OPT_IA_PD 160 
#define  DH6OPT_IA_PD_PREFIX 159 
#define  DH6OPT_IA_TA 158 
#define  DH6OPT_INTERFACE_ID 157 
#define  DH6OPT_LIFETIME 156 
#define  DH6OPT_LQ_CLIENT_LINK 155 
#define  DH6OPT_LQ_QUERY 154 
#define  DH6OPT_LQ_RELAY_DATA 153 
#define  DH6OPT_MUDURL 152 
#define  DH6OPT_NEW_POSIX_TIMEZONE 151 
#define  DH6OPT_NEW_TZDB_TIMEZONE 150 
#define  DH6OPT_NISP_SERVERS 149 
#define  DH6OPT_NIS_SERVERS 148 
#define  DH6OPT_NTP_SERVER 147 
#define  DH6OPT_NTP_SUBOPTION_MC_ADDR 146 
#define  DH6OPT_NTP_SUBOPTION_SRV_ADDR 145 
#define  DH6OPT_NTP_SUBOPTION_SRV_FQDN 144 
#define  DH6OPT_ORO 143 
#define  DH6OPT_PANA_AGENT 142 
#define  DH6OPT_PREFERENCE 141 
#define  DH6OPT_RAPID_COMMIT 140 
#define  DH6OPT_RECONF_ACCEPT 139 
#define  DH6OPT_RECONF_MSG 138 
#define  DH6OPT_RELAY_MSG 137 
#define  DH6OPT_REMOTE_ID 136 
#define  DH6OPT_SERVERID 135 
#define  DH6OPT_SIP_SERVER_A 134 
#define  DH6OPT_SIP_SERVER_D 133 
#define  DH6OPT_SNTP_SERVERS 132 
#define  DH6OPT_STATUS_CODE 131 
#define  DH6OPT_SUBSCRIBER_ID 130 
#define  DH6_INFORM_REQ 129 
#define  DH6_RENEW 128 
 size_t FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dhcp6opt const) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const,size_t) ; 
 int /*<<< orphan*/  dh6opt_str ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__ const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__ const*) ; 
 scalar_t__* FUNC9 (int /*<<< orphan*/ *,scalar_t__ const*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static void
FUNC11(netdissect_options *ndo,
               const u_char *cp, const u_char *ep)
{
	const struct dhcp6opt *dh6o;
	const u_char *tp;
	size_t i;
	uint16_t opttype;
	size_t optlen;
	uint8_t auth_proto;
	u_int authinfolen, authrealmlen;
	int remain_len;  /* Length of remaining options */
	int label_len;   /* Label length */
	uint16_t subopt_code;
	uint16_t subopt_len;

	if (cp == ep)
		return;
	while (cp < ep) {
		if (ep < cp + sizeof(*dh6o))
			goto trunc;
		dh6o = (const struct dhcp6opt *)cp;
		FUNC3(*dh6o);
		optlen = FUNC0(&dh6o->dh6opt_len);
		if (ep < cp + sizeof(*dh6o) + optlen)
			goto trunc;
		opttype = FUNC0(&dh6o->dh6opt_type);
		FUNC2((ndo, " (%s", FUNC10(dh6opt_str, "opt_%u", opttype)));
		FUNC4(*(cp + sizeof(*dh6o)), optlen);
		switch (opttype) {
		case DH6OPT_CLIENTID:
		case DH6OPT_SERVERID:
			if (optlen < 2) {
				/*(*/
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			switch (FUNC0(tp)) {
			case 1:
				if (optlen >= 2 + 6) {
					FUNC2((ndo, " hwaddr/time type %u time %u ",
					    FUNC0(&tp[2]),
					    FUNC1(&tp[4])));
					for (i = 8; i < optlen; i++)
						FUNC2((ndo, "%02x", tp[i]));
					/*(*/
					FUNC2((ndo, ")"));
				} else {
					/*(*/
					FUNC2((ndo, " ?)"));
				}
				break;
			case 2:
				if (optlen >= 2 + 8) {
					FUNC2((ndo, " vid "));
					for (i = 2; i < 2 + 8; i++)
						FUNC2((ndo, "%02x", tp[i]));
					/*(*/
					FUNC2((ndo, ")"));
				} else {
					/*(*/
					FUNC2((ndo, " ?)"));
				}
				break;
			case 3:
				if (optlen >= 2 + 2) {
					FUNC2((ndo, " hwaddr type %u ",
					    FUNC0(&tp[2])));
					for (i = 4; i < optlen; i++)
						FUNC2((ndo, "%02x", tp[i]));
					/*(*/
					FUNC2((ndo, ")"));
				} else {
					/*(*/
					FUNC2((ndo, " ?)"));
				}
				break;
			default:
				FUNC2((ndo, " type %d)", FUNC0(tp)));
				break;
			}
			break;
		case DH6OPT_IA_ADDR:
			if (optlen < 24) {
				/*(*/
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, " %s", FUNC8(ndo, &tp[0])));
			FUNC2((ndo, " pltime:%u vltime:%u",
			    FUNC1(&tp[16]),
			    FUNC1(&tp[20])));
			if (optlen > 24) {
				/* there are sub-options */
				FUNC11(ndo, tp + 24, tp + optlen);
			}
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_ORO:
		case DH6OPT_ERO:
			if (optlen % 2) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			for (i = 0; i < optlen; i += 2) {
				FUNC2((ndo, " %s",
				    FUNC10(dh6opt_str, "opt_%u", FUNC0(&tp[i]))));
			}
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_PREFERENCE:
			if (optlen != 1) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, " %d)", *tp));
			break;
		case DH6OPT_ELAPSED_TIME:
			if (optlen != 2) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, " %d)", FUNC0(tp)));
			break;
		case DH6OPT_RELAY_MSG:
			FUNC2((ndo, " ("));
			tp = (const u_char *)(dh6o + 1);
			FUNC5(ndo, tp, optlen);
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_AUTH:
			if (optlen < 11) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			auth_proto = *tp;
			switch (auth_proto) {
			case DH6OPT_AUTHPROTO_DELAYED:
				FUNC2((ndo, " proto: delayed"));
				break;
			case DH6OPT_AUTHPROTO_RECONFIG:
				FUNC2((ndo, " proto: reconfigure"));
				break;
			default:
				FUNC2((ndo, " proto: %d", auth_proto));
				break;
			}
			tp++;
			switch (*tp) {
			case DH6OPT_AUTHALG_HMACMD5:
				/* XXX: may depend on the protocol */
				FUNC2((ndo, ", alg: HMAC-MD5"));
				break;
			default:
				FUNC2((ndo, ", alg: %d", *tp));
				break;
			}
			tp++;
			switch (*tp) {
			case DH6OPT_AUTHRDM_MONOCOUNTER:
				FUNC2((ndo, ", RDM: mono"));
				break;
			default:
				FUNC2((ndo, ", RDM: %d", *tp));
				break;
			}
			tp++;
			FUNC2((ndo, ", RD:"));
			for (i = 0; i < 4; i++, tp += 2)
				FUNC2((ndo, " %04x", FUNC0(tp)));

			/* protocol dependent part */
			authinfolen = optlen - 11;
			switch (auth_proto) {
			case DH6OPT_AUTHPROTO_DELAYED:
				if (authinfolen == 0)
					break;
				if (authinfolen < 20) {
					FUNC2((ndo, " ??"));
					break;
				}
				authrealmlen = authinfolen - 20;
				if (authrealmlen > 0) {
					FUNC2((ndo, ", realm: "));
				}
				for (i = 0; i < authrealmlen; i++, tp++)
					FUNC2((ndo, "%02x", *tp));
				FUNC2((ndo, ", key ID: %08x", FUNC1(tp)));
				tp += 4;
				FUNC2((ndo, ", HMAC-MD5:"));
				for (i = 0; i < 4; i++, tp+= 4)
					FUNC2((ndo, " %08x", FUNC1(tp)));
				break;
			case DH6OPT_AUTHPROTO_RECONFIG:
				if (authinfolen != 17) {
					FUNC2((ndo, " ??"));
					break;
				}
				switch (*tp++) {
				case DH6OPT_AUTHRECONFIG_KEY:
					FUNC2((ndo, " reconfig-key"));
					break;
				case DH6OPT_AUTHRECONFIG_HMACMD5:
					FUNC2((ndo, " type: HMAC-MD5"));
					break;
				default:
					FUNC2((ndo, " type: ??"));
					break;
				}
				FUNC2((ndo, " value:"));
				for (i = 0; i < 4; i++, tp+= 4)
					FUNC2((ndo, " %08x", FUNC1(tp)));
				break;
			default:
				FUNC2((ndo, " ??"));
				break;
			}

			FUNC2((ndo, ")"));
			break;
		case DH6OPT_RAPID_COMMIT: /* nothing todo */
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_INTERFACE_ID:
		case DH6OPT_SUBSCRIBER_ID:
			/*
			 * Since we cannot predict the encoding, print hex dump
			 * at most 10 characters.
			 */
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, " "));
			for (i = 0; i < optlen && i < 10; i++)
				FUNC2((ndo, "%02x", tp[i]));
			FUNC2((ndo, "...)"));
			break;
		case DH6OPT_RECONF_MSG:
			if (optlen != 1) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			switch (*tp) {
			case DH6_RENEW:
				FUNC2((ndo, " for renew)"));
				break;
			case DH6_INFORM_REQ:
				FUNC2((ndo, " for inf-req)"));
				break;
			default:
				FUNC2((ndo, " for ?\?\?(%02x))", *tp));
				break;
			}
			break;
		case DH6OPT_RECONF_ACCEPT: /* nothing todo */
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_SIP_SERVER_A:
		case DH6OPT_DNS_SERVERS:
		case DH6OPT_SNTP_SERVERS:
		case DH6OPT_NIS_SERVERS:
		case DH6OPT_NISP_SERVERS:
		case DH6OPT_BCMCS_SERVER_A:
		case DH6OPT_PANA_AGENT:
		case DH6OPT_LQ_CLIENT_LINK:
			if (optlen % 16) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			for (i = 0; i < optlen; i += 16)
				FUNC2((ndo, " %s", FUNC8(ndo, &tp[i])));
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_SIP_SERVER_D:
		case DH6OPT_DOMAIN_LIST:
			tp = (const u_char *)(dh6o + 1);
			while (tp < cp + sizeof(*dh6o) + optlen) {
				FUNC2((ndo, " "));
				if ((tp = FUNC9(ndo, tp, cp + sizeof(*dh6o) + optlen)) == NULL)
					goto trunc;
			}
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_STATUS_CODE:
			if (optlen < 2) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, " %s)", FUNC6(FUNC0(&tp[0]))));
			break;
		case DH6OPT_IA_NA:
		case DH6OPT_IA_PD:
			if (optlen < 12) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, " IAID:%u T1:%u T2:%u",
			    FUNC1(&tp[0]),
			    FUNC1(&tp[4]),
			    FUNC1(&tp[8])));
			if (optlen > 12) {
				/* there are sub-options */
				FUNC11(ndo, tp + 12, tp + optlen);
			}
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_IA_TA:
			if (optlen < 4) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, " IAID:%u", FUNC1(tp)));
			if (optlen > 4) {
				/* there are sub-options */
				FUNC11(ndo, tp + 4, tp + optlen);
			}
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_IA_PD_PREFIX:
			if (optlen < 25) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, " %s/%d", FUNC8(ndo, &tp[9]), tp[8]));
			FUNC2((ndo, " pltime:%u vltime:%u",
			    FUNC1(&tp[0]),
			    FUNC1(&tp[4])));
			if (optlen > 25) {
				/* there are sub-options */
				FUNC11(ndo, tp + 25, tp + optlen);
			}
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_LIFETIME:
		case DH6OPT_CLT_TIME:
			if (optlen != 4) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, " %d)", FUNC1(tp)));
			break;
		case DH6OPT_REMOTE_ID:
			if (optlen < 4) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, " %d ", FUNC1(tp)));
			/*
			 * Print hex dump first 10 characters.
			 */
			for (i = 4; i < optlen && i < 14; i++)
				FUNC2((ndo, "%02x", tp[i]));
			FUNC2((ndo, "...)"));
			break;
		case DH6OPT_LQ_QUERY:
			if (optlen < 17) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			switch (*tp) {
			case 1:
				FUNC2((ndo, " by-address"));
				break;
			case 2:
				FUNC2((ndo, " by-clientID"));
				break;
			default:
				FUNC2((ndo, " type_%d", (int)*tp));
				break;
			}
			FUNC2((ndo, " %s", FUNC8(ndo, &tp[1])));
			if (optlen > 17) {
				/* there are query-options */
				FUNC11(ndo, tp + 17, tp + optlen);
			}
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_CLIENT_DATA:
			tp = (const u_char *)(dh6o + 1);
			if (optlen > 0) {
				/* there are encapsulated options */
				FUNC11(ndo, tp, tp + optlen);
			}
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_LQ_RELAY_DATA:
			if (optlen < 16) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, " %s ", FUNC8(ndo, &tp[0])));
			/*
			 * Print hex dump first 10 characters.
			 */
			for (i = 16; i < optlen && i < 26; i++)
				FUNC2((ndo, "%02x", tp[i]));
			FUNC2((ndo, "...)"));
			break;
		case DH6OPT_NTP_SERVER:
			if (optlen < 4) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			while (tp < cp + sizeof(*dh6o) + optlen - 4) {
				subopt_code = FUNC0(tp);
				tp += 2;
				subopt_len = FUNC0(tp);
				tp += 2;
				if (tp + subopt_len > cp + sizeof(*dh6o) + optlen)
					goto trunc;
				FUNC2((ndo, " subopt:%d", subopt_code));
				switch (subopt_code) {
				case DH6OPT_NTP_SUBOPTION_SRV_ADDR:
				case DH6OPT_NTP_SUBOPTION_MC_ADDR:
					if (subopt_len != 16) {
						FUNC2((ndo, " ?"));
						break;
					}
					FUNC2((ndo, " %s", FUNC8(ndo, &tp[0])));
					break;
				case DH6OPT_NTP_SUBOPTION_SRV_FQDN:
					FUNC2((ndo, " "));
					if (FUNC9(ndo, tp, tp + subopt_len) == NULL)
						goto trunc;
					break;
				default:
					FUNC2((ndo, " ?"));
					break;
				}
				tp += subopt_len;
			}
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_AFTR_NAME:
			if (optlen < 3) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			remain_len = optlen;
			FUNC2((ndo, " "));
			/* Encoding is described in section 3.1 of RFC 1035 */
			while (remain_len && *tp) {
				label_len =  *tp++;
				if (label_len < remain_len - 1) {
					(void)FUNC7(ndo, tp, label_len, NULL);
					tp += label_len;
					remain_len -= (label_len + 1);
					if(*tp) FUNC2((ndo, "."));
				} else {
					FUNC2((ndo, " ?"));
					break;
				}
			}
			FUNC2((ndo, ")"));
			break;
		case DH6OPT_NEW_POSIX_TIMEZONE: /* all three of these options */
		case DH6OPT_NEW_TZDB_TIMEZONE:	/* are encoded similarly */
		case DH6OPT_MUDURL:		/* although GMT might not work */
		        if (optlen < 5) {
				FUNC2((ndo, " ?)"));
				break;
			}
			tp = (const u_char *)(dh6o + 1);
			FUNC2((ndo, "="));
			(void)FUNC7(ndo, tp, (u_int)optlen, NULL);
			FUNC2((ndo, ")"));
			break;

		default:
			FUNC2((ndo, ")"));
			break;
		}

		cp += sizeof(*dh6o) + optlen;
	}
	return;

trunc:
	FUNC2((ndo, "[|dhcp6ext]"));
}