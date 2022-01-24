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
typedef  scalar_t__ u32 ;
struct ieee802_1x_mka_peer_id {int /*<<< orphan*/  mi; int /*<<< orphan*/  mn; } ;
struct TYPE_2__ {int /*<<< orphan*/  mi; } ;
struct ieee802_1x_mka_participant {scalar_t__ mn; int /*<<< orphan*/  mi; TYPE_1__ current_peer_id; } ;
struct ieee802_1x_mka_hdr {int dummy; } ;
struct ieee802_1x_kay_peer {scalar_t__ mn; } ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  MI_LEN ; 
 int MKA_HDR_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct ieee802_1x_mka_hdr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee802_1x_mka_participant*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ieee802_1x_kay_peer* FUNC3 (struct ieee802_1x_mka_participant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee802_1x_mka_participant*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ieee802_1x_mka_peer_id const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee802_1x_mka_participant*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC8(
	struct ieee802_1x_mka_participant *participant,
	const u8 *peer_msg, size_t msg_len)
{
	const struct ieee802_1x_mka_hdr *hdr;
	struct ieee802_1x_kay_peer *peer;
	size_t body_len;
	size_t i;
	Boolean is_included;

	is_included = FUNC4(
		participant, participant->current_peer_id.mi);

	hdr = (const struct ieee802_1x_mka_hdr *) peer_msg;
	body_len = FUNC1(hdr);
	if (body_len % 16 != 0) {
		FUNC7(MSG_ERROR,
			   "KaY: MKA Peer Packet Body Length (%zu bytes) should be a multiple of 16 octets",
			   body_len);
		return -1;
	}

	for (i = 0; i < body_len; i += sizeof(struct ieee802_1x_mka_peer_id)) {
		const struct ieee802_1x_mka_peer_id *peer_mi;
		u32 peer_mn;

		peer_mi = (const struct ieee802_1x_mka_peer_id *)
			(peer_msg + MKA_HDR_LEN + i);
		peer_mn = FUNC0(peer_mi->mn);

		/* it is myself */
		if (FUNC5(peer_mi, participant->mi, MI_LEN) == 0) {
			/* My message id is used by other participant */
			if (peer_mn > participant->mn &&
			    !FUNC6(participant))
				FUNC7(MSG_DEBUG, "KaY: Could not update mi");
			continue;
		}

		if (!is_included)
			continue;

		peer = FUNC3(participant, peer_mi->mi);
		if (peer) {
			peer->mn = peer_mn;
		} else if (!FUNC2(
				participant, peer_mi->mi, peer_mn)) {
			return -1;
		}
	}

	return 0;
}