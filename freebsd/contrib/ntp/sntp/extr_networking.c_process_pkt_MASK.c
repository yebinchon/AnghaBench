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
typedef  int /*<<< orphan*/  u_int32 ;
typedef  int u_int ;
struct pkt {scalar_t__ stratum; int /*<<< orphan*/  xmt; int /*<<< orphan*/  org; int /*<<< orphan*/  li_vn_mode; int /*<<< orphan*/  refid; int /*<<< orphan*/  exten; } ;
struct key {int dummy; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  AUTHENTICATION ; 
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int KOD_DEMOBILIZE ; 
 int KOD_RATE ; 
 scalar_t__ LEAP_NOTINSYNC ; 
 scalar_t__ LEN_PKT_NOMAC ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MODE_BROADCAST ; 
 int MODE_PASSIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NTP_OLDVERSION ; 
 int /*<<< orphan*/  NTP_VERSION ; 
 int PACKET_UNUSEABLE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int SERVER_AUTH_FAIL ; 
 int SERVER_UNUSEABLE ; 
 scalar_t__ STRATUM_PKT_UNSPEC ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC7 (struct pkt*,int,int,struct key*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct key**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 char const* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char const* FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (char*,char*,int) ; 

int
FUNC16 (
	struct pkt *rpkt,
	sockaddr_u *sender,
	int pkt_len,
	int mode,
	struct pkt *spkt,
	const char * func_name
	)
{
	u_int		key_id;
	struct key *	pkt_key;
	int		is_authentic;
	int		mac_size;
	u_int		exten_len;
	u_int32 *       exten_end;
	u_int32 *       packet_end;
	l_fp		sent_xmt;
	l_fp		resp_org;

	// key_id = 0;
	pkt_key = NULL;
	is_authentic = (FUNC0(AUTHENTICATION)) ? 0 : -1;

	/*
	 * Parse the extension field if present. We figure out whether
	 * an extension field is present by measuring the MAC size. If
	 * the number of words following the packet header is 0, no MAC
	 * is present and the packet is not authenticated. If 1, the
	 * packet is a crypto-NAK; if 3, the packet is authenticated
	 * with DES; if 5, the packet is authenticated with MD5; if 6,
	 * the packet is authenticated with SHA. If 2 or 4, the packet
	 * is a runt and discarded forthwith. If greater than 6, an
	 * extension field is present, so we subtract the length of the
	 * field and go around again.
	 */
	if (pkt_len < (int)LEN_PKT_NOMAC || (pkt_len & 3) != 0) {
		FUNC9(LOG_ERR,
			"%s: Incredible packet length: %d.  Discarding.",
			func_name, pkt_len);
		return PACKET_UNUSEABLE;
	}

	/* HMS: the following needs a bit of work */
	/* Note: pkt_len must be a multiple of 4 at this point! */
	packet_end = (void*)((char*)rpkt + pkt_len);
	exten_end = FUNC13(rpkt->exten, packet_end);
	if (NULL == exten_end) {
		FUNC9(LOG_ERR,
			"%s: Missing extension field.  Discarding.",
			func_name);
		return PACKET_UNUSEABLE;
	}

	/* get size of MAC in cells; can be zero */
	exten_len = (u_int)(packet_end - exten_end);

	/* deduce action required from remaining length */
	switch (exten_len) {

	case 0:	/* no Legacy MAC */
		break;

	case 1:	/* crypto NAK */		
		/* Only if the keyID is 0 and there were no EFs */
		key_id = FUNC10(*exten_end);
		FUNC12("Crypto NAK = 0x%08x from %s\n", key_id, FUNC14(sender));
		break;

	case 3: /* key ID + 3DES MAC -- unsupported! */
		FUNC9(LOG_ERR,
			"%s: Key ID + 3DES MAC is unsupported.  Discarding.",
			func_name);
		return PACKET_UNUSEABLE;

	case 5:	/* key ID + MD5 MAC */
	case 6:	/* key ID + SHA MAC */
		/*
		** Look for the key used by the server in the specified
		** keyfile and if existent, fetch it or else leave the
		** pointer untouched
		*/
		key_id = FUNC10(*exten_end);
		FUNC8(key_id, &pkt_key);
		if (!pkt_key) {
			FUNC12("unrecognized key ID = 0x%08x\n", key_id);
			break;
		}
		/*
		** Seems like we've got a key with matching keyid.
		**
		** Generate a md5sum of the packet with the key from our
		** keyfile and compare those md5sums.
		*/
		mac_size = exten_len << 2;
		if (!FUNC7(rpkt, pkt_len - mac_size,
			      mac_size - 4, pkt_key)) {
			is_authentic = FALSE;
			break;
		}
		/* Yay! Things worked out! */
		is_authentic = TRUE;
		FUNC6(1, ("sntp %s: packet from %s authenticated using key id %d.\n",
			  func_name, FUNC14(sender), key_id));
		break;

	default:
		FUNC9(LOG_ERR,
			"%s: Unexpected extension length: %d.  Discarding.",
			func_name, exten_len);
		return PACKET_UNUSEABLE;
	}

	switch (is_authentic) {

	case -1:	/* unknown */
		break;

	case 0:		/* not authentic */
		return SERVER_AUTH_FAIL;
		break;

	case 1:		/* authentic */
		break;

	default:	/* error */
		break;
	}

	/* Check for server's ntp version */
	if (FUNC5(rpkt->li_vn_mode) < NTP_OLDVERSION ||
		FUNC5(rpkt->li_vn_mode) > NTP_VERSION) {
		FUNC9(LOG_ERR,
			"%s: Packet shows wrong version (%d)",
			func_name, FUNC5(rpkt->li_vn_mode));
		return SERVER_UNUSEABLE;
	} 
	/* We want a server to sync with */
	if (FUNC4(rpkt->li_vn_mode) != mode &&
	    FUNC4(rpkt->li_vn_mode) != MODE_PASSIVE) {
		FUNC9(LOG_ERR,
			"%s: mode %d stratum %d", func_name, 
			FUNC4(rpkt->li_vn_mode), rpkt->stratum);
		return SERVER_UNUSEABLE;
	}
	/* Stratum is unspecified (0) check what's going on */
	if (STRATUM_PKT_UNSPEC == rpkt->stratum) {
		char *ref_char;

		FUNC6(1, ("%s: Stratum unspecified, going to check for KOD (stratum: %d)\n", 
			  func_name, rpkt->stratum));
		ref_char = (char *) &rpkt->refid;
		FUNC6(1, ("%s: Packet refid: %c%c%c%c\n", func_name,
			  ref_char[0], ref_char[1], ref_char[2], ref_char[3]));
		/* If it's a KOD packet we'll just use the KOD information */
		if (ref_char[0] != 'X') {
			if (FUNC15(ref_char, "DENY", 4) == 0)
				return KOD_DEMOBILIZE;
			if (FUNC15(ref_char, "RSTR", 4) == 0)
				return KOD_DEMOBILIZE;
			if (FUNC15(ref_char, "RATE", 4) == 0)
				return KOD_RATE;
			/*
			** There are other interesting kiss codes which
			** might be interesting for authentication.
			*/
		}
	}
	/* If the server is not synced it's not really useable for us */
	if (LEAP_NOTINSYNC == FUNC3(rpkt->li_vn_mode)) {
		FUNC9(LOG_ERR,
			"%s: %s not in sync, skipping this server",
			func_name, FUNC14(sender));
		return SERVER_UNUSEABLE;
	}

	/*
	 * Decode the org timestamp and make sure we're getting a response
	 * to our last request, but only if we're not in broadcast mode.
	 */
	if (MODE_BROADCAST == mode)
		return pkt_len;

	if (!FUNC1(&rpkt->org, &spkt->xmt)) {
		FUNC2(&rpkt->org, &resp_org);
		FUNC2(&spkt->xmt, &sent_xmt);
		FUNC9(LOG_ERR,
			"%s response org expected to match sent xmt",
			FUNC14(sender));
		FUNC9(LOG_ERR, "resp org: %s", FUNC11(&resp_org));
		FUNC9(LOG_ERR, "sent xmt: %s", FUNC11(&sent_xmt));
		return PACKET_UNUSEABLE;
	}

	return pkt_len;
}