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
struct receive_sc {int /*<<< orphan*/  list; int /*<<< orphan*/  sci; } ;
struct ieee802_1x_mka_participant {int /*<<< orphan*/  rxsc_list; int /*<<< orphan*/  live_peers; int /*<<< orphan*/  kay; int /*<<< orphan*/  current_peer_sci; } ;
struct ieee802_1x_kay_peer {int /*<<< orphan*/  list; int /*<<< orphan*/  sci; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct receive_sc* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct receive_sc*) ; 
 struct receive_sc* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct receive_sc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct receive_sc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct ieee802_1x_kay_peer *
FUNC8(struct ieee802_1x_mka_participant *participant,
				const u8 *mi, u32 mn)
{
	struct ieee802_1x_kay_peer *peer;
	struct receive_sc *rxsc;

	peer = FUNC1(mi, mn);
	if (!peer)
		return NULL;

	FUNC5(&peer->sci, &participant->current_peer_sci,
		  sizeof(peer->sci));

	rxsc = FUNC3(&peer->sci);
	if (!rxsc) {
		FUNC4(peer);
		return NULL;
	}

	if (FUNC6(participant->kay, rxsc)) {
		FUNC4(rxsc);
		FUNC4(peer);
		return NULL;
	}
	FUNC0(&participant->live_peers, &peer->list);
	FUNC0(&participant->rxsc_list, &rxsc->list);

	FUNC7(MSG_DEBUG, "KaY: Live peer created");
	FUNC2(peer);

	return peer;
}