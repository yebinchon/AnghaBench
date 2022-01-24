#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_4__ {int /*<<< orphan*/  mi; int /*<<< orphan*/  mn; } ;
struct ieee802_1x_mka_participant {void* active; scalar_t__ retry_count; TYPE_1__ current_peer_id; int /*<<< orphan*/  mi; } ;
struct ieee802_1x_mka_hdr {int dummy; } ;
struct ieee802_1x_kay_peer {scalar_t__ missing_sak_use_count; scalar_t__ expire; scalar_t__ sak_used; } ;
struct ieee802_1x_kay {void* active; int /*<<< orphan*/  if_name; } ;
struct ieee802_1x_hdr {int dummy; } ;
struct ieee8023_hdr {int dummy; } ;
struct TYPE_5__ {scalar_t__ (* body_rx ) (struct ieee802_1x_mka_participant*,size_t const*,size_t) ;} ;
typedef  void* Boolean ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 size_t DEFAULT_ICV_LEN ; 
 void* FALSE ; 
 scalar_t__ MAX_MISSING_SAK_USE ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t MKA_DISTRIBUTED_SAK ; 
 size_t MKA_HDR_LEN ; 
 size_t MKA_ICV_INDICATOR ; 
 int MKA_LIFE_TIME ; 
 size_t MKA_SAK_USE ; 
 int /*<<< orphan*/  MKA_VERSION_ID ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee802_1x_mka_hdr*) ; 
 size_t FUNC4 (struct ieee802_1x_mka_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee802_1x_mka_participant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee802_1x_mka_participant*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee802_1x_mka_participant*) ; 
 struct ieee802_1x_kay_peer* FUNC8 (struct ieee802_1x_mka_participant*,int /*<<< orphan*/ ) ; 
 struct ieee802_1x_kay_peer* FUNC9 (struct ieee802_1x_mka_participant*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct ieee802_1x_mka_participant*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct ieee802_1x_mka_participant*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct ieee802_1x_kay*,size_t const*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee802_1x_mka_participant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee802_1x_mka_participant* FUNC14 (struct ieee802_1x_kay*,size_t const*,size_t) ; 
 void* FUNC15 (struct ieee802_1x_mka_participant*,size_t const*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_2__* mka_body_handler ; 
 int /*<<< orphan*/  FUNC17 (struct ieee802_1x_mka_participant*) ; 
 scalar_t__ FUNC18 (struct ieee802_1x_mka_participant*,size_t const*,size_t) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (void*) ; 

__attribute__((used)) static int FUNC22(struct ieee802_1x_kay *kay,
				       const u8 *buf, size_t len)
{
	struct ieee802_1x_mka_participant *participant;
	struct ieee802_1x_mka_hdr *hdr;
	struct ieee802_1x_kay_peer *peer;
	size_t body_len;
	size_t left_len;
	u8 body_type;
	int i;
	const u8 *pos;
	Boolean handled[256];
	Boolean bad_sak_use = FALSE; /* Error detected while processing SAK Use
				      * parameter set */
	Boolean i_in_peerlist, is_in_live_peer, is_in_potential_peer;

	FUNC20(MSG_DEBUG, "KaY: Decode received MKPDU (ifname=%s)",
		   kay->if_name);
	if (FUNC12(kay, buf, len))
		return -1;

	/* handle basic parameter set */
	pos = buf + sizeof(struct ieee8023_hdr) + sizeof(struct ieee802_1x_hdr);
	left_len = len - sizeof(struct ieee8023_hdr) -
		sizeof(struct ieee802_1x_hdr);
	participant = FUNC14(kay, pos, left_len);
	if (!participant)
		return -1;

	/* to skip basic parameter set */
	hdr = (struct ieee802_1x_mka_hdr *) pos;
	body_len = FUNC1(FUNC3(hdr));
	if (left_len < body_len + MKA_HDR_LEN)
		return -1;
	pos += body_len + MKA_HDR_LEN;
	left_len -= body_len + MKA_HDR_LEN;

	/* check i am in the peer's peer list */
	i_in_peerlist = FUNC15(participant, pos,
						     left_len);
	is_in_live_peer = FUNC10(
		participant, participant->current_peer_id.mi);
	FUNC20(MSG_DEBUG, "KaY: i_in_peerlist=%s is_in_live_peer=%s",
		   FUNC21(i_in_peerlist), FUNC21(is_in_live_peer));
	if (i_in_peerlist && !is_in_live_peer) {
		/* accept the peer as live peer */
		is_in_potential_peer = FUNC11(
			participant, participant->current_peer_id.mi);
		if (is_in_potential_peer) {
			if (!FUNC13(
				    participant,
				    participant->current_peer_id.mi,
				    FUNC2(participant->
						 current_peer_id.mn)))
				return -1;
		} else if (!FUNC5(
				   participant, participant->current_peer_id.mi,
				   FUNC2(participant->
						current_peer_id.mn))) {
				return -1;
		}

		FUNC7(participant);
		FUNC6(participant);
	}

	/*
	 * Handle other parameter set than basic parameter set.
	 * Each parameter set should be present only once.
	 */
	for (i = 0; i < 256; i++)
		handled[i] = FALSE;

	handled[0] = TRUE;
	for (; left_len > MKA_HDR_LEN + DEFAULT_ICV_LEN;
	     pos += body_len + MKA_HDR_LEN,
		     left_len -= body_len + MKA_HDR_LEN) {
		hdr = (struct ieee802_1x_mka_hdr *) pos;
		body_len = FUNC1(FUNC3(hdr));
		body_type = FUNC4(hdr);

		if (body_type == MKA_ICV_INDICATOR)
			return 0;

		if (left_len < (MKA_HDR_LEN + body_len + DEFAULT_ICV_LEN)) {
			FUNC20(MSG_ERROR,
				   "KaY: MKA Peer Packet Body Length (%zu bytes) is less than the Parameter Set Header Length (%zu bytes) + the Parameter Set Body Length (%zu bytes) + %d bytes of ICV",
				   left_len, MKA_HDR_LEN,
				   body_len, DEFAULT_ICV_LEN);
			return -1;
		}

		if (handled[body_type]) {
			FUNC20(MSG_DEBUG,
				   "KaY: Ignore duplicated body type %u",
				   body_type);
			continue;
		}

		handled[body_type] = TRUE;
		if (body_type < FUNC0(mka_body_handler) &&
		    mka_body_handler[body_type].body_rx) {
			if (mka_body_handler[body_type].body_rx
				(participant, pos, left_len) != 0) {
				/* Handle parameter set failure */
				if (body_type != MKA_SAK_USE) {
					FUNC20(MSG_INFO,
						   "KaY: Discarding Rx MKPDU: decode of parameter set type (%d) failed",
						   body_type);
					return -1;
				}

				/* Ideally DIST-SAK should be processed before
				 * SAK-USE. Unfortunately IEEE Std 802.1X-2010,
				 * 11.11.3 (Encoding MKPDUs) states SAK-USE(3)
				 * must always be encoded before DIST-SAK(4).
				 * Rather than redesigning mka_body_handler so
				 * that it somehow processes DIST-SAK before
				 * SAK-USE, just ignore SAK-USE failures if
				 * DIST-SAK is also present in this MKPDU. */
				bad_sak_use = TRUE;
			}
		} else {
			FUNC20(MSG_ERROR,
				   "KaY: The body type %d is not supported in this MKA version %d",
				   body_type, MKA_VERSION_ID);
		}
	}

	if (bad_sak_use && !handled[MKA_DISTRIBUTED_SAK]) {
		FUNC20(MSG_INFO,
			   "KaY: Discarding Rx MKPDU: decode of parameter set type (%d) failed",
			   MKA_SAK_USE);
		if (!FUNC17(participant))
			FUNC20(MSG_DEBUG, "KaY: Could not update mi");
		else
			FUNC20(MSG_DEBUG,
				   "KaY: Selected a new random MI: %s",
				   FUNC16(participant->mi));
		return -1;
	}

	/* Detect missing parameter sets */
	peer = FUNC8(participant,
					    participant->current_peer_id.mi);
	if (peer) {
		/* MKPDU is from live peer */
		if (!handled[MKA_SAK_USE]) {
			/* Once a live peer starts sending SAK-USE, it should be
			 * sent every time. */
			if (peer->sak_used) {
				FUNC20(MSG_INFO,
					   "KaY: Discarding Rx MKPDU: Live Peer stopped sending SAK-USE");
				return -1;
			}

			/* Live peer is probably hung if it hasn't sent SAK-USE
			 * after a reasonable number of MKPDUs. Drop the MKPDU,
			 * which will eventually force an timeout. */
			if (++peer->missing_sak_use_count >
			    MAX_MISSING_SAK_USE) {
				FUNC20(MSG_INFO,
					   "KaY: Discarding Rx MKPDU: Live Peer not sending SAK-USE");
				return -1;
			}
		} else {
			peer->missing_sak_use_count = 0;

			/* Only update live peer watchdog after successful
			 * decode of all parameter sets */
			peer->expire = FUNC19(NULL) + MKA_LIFE_TIME / 1000;
		}
	} else {
		/* MKPDU is from new or potential peer */
		peer = FUNC9(participant,
					       participant->current_peer_id.mi);
		if (!peer) {
			FUNC20(MSG_DEBUG, "KaY: No peer entry found");
			return -1;
		}

		/* Do not update potential peer watchdog. Per IEEE Std
		 * 802.1X-2010, 9.4.3, potential peers need to show liveness by
		 * including our MI/MN in their transmitted MKPDU (within
		 * potential or live parameter sets). Whena potential peer does
		 * include our MI/MN in an MKPDU, we respond by moving the peer
		 * from 'potential_peers' to 'live_peers'. */
	}

	kay->active = TRUE;
	participant->retry_count = 0;
	participant->active = TRUE;

	return 0;
}