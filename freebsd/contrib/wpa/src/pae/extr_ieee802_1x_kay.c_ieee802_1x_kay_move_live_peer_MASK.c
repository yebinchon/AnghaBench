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
typedef  int /*<<< orphan*/  u32 ;
struct receive_sc {int /*<<< orphan*/  list; scalar_t__ expire; int /*<<< orphan*/  mn; int /*<<< orphan*/  sci; } ;
struct ieee802_1x_mka_participant {int /*<<< orphan*/  rxsc_list; int /*<<< orphan*/  live_peers; int /*<<< orphan*/  kay; int /*<<< orphan*/  current_peer_sci; } ;
struct ieee802_1x_kay_peer {int /*<<< orphan*/  list; scalar_t__ expire; int /*<<< orphan*/  mn; int /*<<< orphan*/  sci; } ;

/* Variables and functions */
 int MKA_LIFE_TIME ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct receive_sc*) ; 
 struct receive_sc* FUNC4 (struct ieee802_1x_mka_participant*,int /*<<< orphan*/ *) ; 
 struct receive_sc* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct receive_sc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct receive_sc*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct ieee802_1x_kay_peer *
FUNC11(struct ieee802_1x_mka_participant *participant,
			      u8 *mi, u32 mn)
{
	struct ieee802_1x_kay_peer *peer;
	struct receive_sc *rxsc;

	peer = FUNC4(participant, mi);
	if (!peer)
		return NULL;

	rxsc = FUNC5(&participant->current_peer_sci);
	if (!rxsc)
		return NULL;

	FUNC7(&peer->sci, &participant->current_peer_sci,
		  sizeof(peer->sci));
	peer->mn = mn;
	peer->expire = FUNC9(NULL) + MKA_LIFE_TIME / 1000;

	FUNC10(MSG_DEBUG, "KaY: Move potential peer to live peer");
	FUNC3(peer);

	FUNC2(&peer->list);
	if (FUNC8(participant->kay, rxsc)) {
		FUNC10(MSG_ERROR, "KaY: Can't create SC, discard peer");
		FUNC6(rxsc);
		FUNC6(peer);
		return NULL;
	}
	FUNC1(&participant->live_peers, &peer->list);

	FUNC0(&participant->rxsc_list, &rxsc->list);

	return peer;
}