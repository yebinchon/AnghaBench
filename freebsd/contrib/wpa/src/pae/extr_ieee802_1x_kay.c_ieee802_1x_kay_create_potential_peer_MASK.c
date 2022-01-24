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
struct ieee802_1x_mka_participant {int /*<<< orphan*/  potential_peers; } ;
struct ieee802_1x_kay_peer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ieee802_1x_kay_peer* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee802_1x_kay_peer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct ieee802_1x_kay_peer *
FUNC4(
	struct ieee802_1x_mka_participant *participant, const u8 *mi, u32 mn)
{
	struct ieee802_1x_kay_peer *peer;

	peer = FUNC1(mi, mn);
	if (!peer)
		return NULL;

	FUNC0(&participant->potential_peers, &peer->list);

	FUNC3(MSG_DEBUG, "KaY: Potential peer created");
	FUNC2(peer);

	return peer;
}