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
struct peer {int dummy; } ;

/* Variables and functions */
 int INC_PEER_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct peer*,int /*<<< orphan*/ ) ; 
 struct peer* FUNC1 (int,int) ; 
 int /*<<< orphan*/  p_link ; 
 int /*<<< orphan*/  peer_free ; 
 int peer_free_count ; 
 int total_peer_structs ; 

__attribute__((used)) static void
FUNC2(void)
{
	int i;
	struct peer *peers;

	peers = FUNC1(INC_PEER_ALLOC, sizeof(*peers));

	for (i = INC_PEER_ALLOC - 1; i >= 0; i--)
		FUNC0(peer_free, &peers[i], p_link);

	total_peer_structs += INC_PEER_ALLOC;
	peer_free_count += INC_PEER_ALLOC;
}