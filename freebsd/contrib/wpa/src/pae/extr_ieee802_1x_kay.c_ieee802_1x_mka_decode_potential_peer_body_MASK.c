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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct ieee802_1x_mka_peer_id {int /*<<< orphan*/  mn; } ;
struct ieee802_1x_mka_participant {scalar_t__ mn; int /*<<< orphan*/  mi; } ;
struct ieee802_1x_mka_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MI_LEN ; 
 int MKA_HDR_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct ieee802_1x_mka_hdr const*) ; 
 scalar_t__ FUNC2 (struct ieee802_1x_mka_peer_id const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee802_1x_mka_participant*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC5(
	struct ieee802_1x_mka_participant *participant,
	const u8 *peer_msg, size_t msg_len)
{
	const struct ieee802_1x_mka_hdr *hdr;
	size_t body_len;
	size_t i;

	hdr = (const struct ieee802_1x_mka_hdr *) peer_msg;
	body_len = FUNC1(hdr);
	if (body_len % 16 != 0) {
		FUNC4(MSG_ERROR,
			   "KaY: MKA Peer Packet Body Length (%zu bytes) should be a multiple of 16 octets",
			   body_len);
		return -1;
	}

	for (i = 0; i < body_len; i += sizeof(struct ieee802_1x_mka_peer_id)) {
		const struct ieee802_1x_mka_peer_id *peer_mi;
		u32 peer_mn;

		peer_mi = (struct ieee802_1x_mka_peer_id *)
			(peer_msg + MKA_HDR_LEN + i);
		peer_mn = FUNC0(peer_mi->mn);

		/* it is myself */
		if (FUNC2(peer_mi, participant->mi, MI_LEN) == 0) {
			/* My message id is used by other participant */
			if (peer_mn > participant->mn &&
			    !FUNC3(participant))
				FUNC4(MSG_DEBUG, "KaY: Could not update mi");
			continue;
		}
	}

	return 0;
}