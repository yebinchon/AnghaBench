#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  timeoutie ;
struct wpa_tdls_timeoutie {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kck; } ;
struct wpa_tdls_peer {int /*<<< orphan*/  initiator; int /*<<< orphan*/  rsnie_p; TYPE_1__ tpk; int /*<<< orphan*/  lifetime; int /*<<< orphan*/  inonce; int /*<<< orphan*/  rnonce; int /*<<< orphan*/  rsnie_p_len; scalar_t__ rsnie_i_len; } ;
struct wpa_tdls_lnkid {int dummy; } ;
struct wpa_tdls_ftie {int ie_len; int* mic; int /*<<< orphan*/  Snonce; int /*<<< orphan*/  Anonce; int /*<<< orphan*/  ie_type; } ;
struct wpa_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int TDLS_TESTING_LONG_FRAME ; 
 int TDLS_TESTING_WRONG_LIFETIME_RESP ; 
 int TDLS_TESTING_WRONG_MIC ; 
 int /*<<< orphan*/  WLAN_EID_FAST_BSS_TRANSITION ; 
 int /*<<< orphan*/  WLAN_TDLS_SETUP_RESPONSE ; 
 int /*<<< orphan*/  WPA_NONCE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int tdls_testing ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC8 (struct wpa_sm*) ; 
 int FUNC9 (struct wpa_sm*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(struct wpa_sm *sm,
				const unsigned char *src_addr, u8 dtoken,
				struct wpa_tdls_lnkid *lnkid,
				const struct wpa_tdls_peer *peer)
{
	u8 *rbuf, *pos;
	size_t buf_len;
	u32 lifetime;
	struct wpa_tdls_timeoutie timeoutie;
	struct wpa_tdls_ftie *ftie;
	int status;

	buf_len = 0;
	if (FUNC8(sm)) {
		/* Peer RSN IE, FTIE(Initiator Nonce, Responder Nonce),
		 * Lifetime */
		buf_len += peer->rsnie_i_len + sizeof(struct wpa_tdls_ftie) +
			sizeof(struct wpa_tdls_timeoutie);
#ifdef CONFIG_TDLS_TESTING
		if (tdls_testing & TDLS_TESTING_LONG_FRAME)
			buf_len += 170;
#endif /* CONFIG_TDLS_TESTING */
	}

	rbuf = FUNC2(buf_len + 1);
	if (rbuf == NULL)
		return -1;
	pos = rbuf;

	if (!FUNC8(sm))
		goto skip_ies;

	/* Peer RSN IE */
	pos = FUNC3(pos, peer->rsnie_p, peer->rsnie_p_len);

	ftie = (struct wpa_tdls_ftie *) pos;
	ftie->ie_type = WLAN_EID_FAST_BSS_TRANSITION;
	/* TODO: ftie->mic_control to set 2-RESPONSE */
	FUNC1(ftie->Anonce, peer->rnonce, WPA_NONCE_LEN);
	FUNC1(ftie->Snonce, peer->inonce, WPA_NONCE_LEN);
	ftie->ie_len = sizeof(struct wpa_tdls_ftie) - 2;
	FUNC5(MSG_DEBUG, "TDLS: FTIE for TPK M2",
		    (u8 *) ftie, sizeof(*ftie));

	pos = (u8 *) (ftie + 1);

#ifdef CONFIG_TDLS_TESTING
	if (tdls_testing & TDLS_TESTING_LONG_FRAME) {
		wpa_printf(MSG_DEBUG, "TDLS: Testing - add extra subelem to "
			   "FTIE");
		ftie->ie_len += 170;
		*pos++ = 255; /* FTIE subelem */
		*pos++ = 168; /* FTIE subelem length */
		pos += 168;
	}
#endif /* CONFIG_TDLS_TESTING */

	/* Lifetime */
	lifetime = peer->lifetime;
#ifdef CONFIG_TDLS_TESTING
	if (tdls_testing & TDLS_TESTING_WRONG_LIFETIME_RESP) {
		wpa_printf(MSG_DEBUG, "TDLS: Testing - use wrong TPK "
			   "lifetime in response");
		lifetime++;
	}
#endif /* CONFIG_TDLS_TESTING */
	pos = FUNC4(pos, (u8 *) &timeoutie,
				     sizeof(timeoutie), lifetime);
	FUNC6(MSG_DEBUG, "TDLS: TPK lifetime %u seconds from initiator",
		   lifetime);

	/* compute MIC before sending */
	FUNC7(peer->tpk.kck, 2, (u8 *) lnkid, peer->rsnie_p,
			  (u8 *) &timeoutie, (u8 *) ftie, ftie->mic);
#ifdef CONFIG_TDLS_TESTING
	if (tdls_testing & TDLS_TESTING_WRONG_MIC) {
		wpa_printf(MSG_DEBUG, "TDLS: Testing - use wrong MIC");
		ftie->mic[0] ^= 0x01;
	}
#endif /* CONFIG_TDLS_TESTING */

skip_ies:
	status = FUNC9(sm, src_addr, WLAN_TDLS_SETUP_RESPONSE,
				   dtoken, 0, 0, peer->initiator, rbuf,
				   pos - rbuf);
	FUNC0(rbuf);

	return status;
}