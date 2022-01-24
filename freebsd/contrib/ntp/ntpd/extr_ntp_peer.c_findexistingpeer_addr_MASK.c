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
typedef  int /*<<< orphan*/  u_int ;
typedef  int u_char ;
struct peer {int hmode; int cast_flags; struct peer* adr_link; int /*<<< orphan*/  srcadr; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int MDF_BCLNT ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct peer** peer_hash ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
struct peer *		
FUNC5(
	sockaddr_u *	addr,
	struct peer *	start_peer,
	int		mode,
	u_char		cast_flags,
	int *		ip_count
	)
{
	struct peer *peer;

	FUNC1(2, ("findexistingpeer_addr(%s, %s, %d, 0x%x, %p)\n",
		FUNC4(addr),
		(start_peer)
		    ? FUNC4(&start_peer->srcadr)
		    : "NULL",
		mode, (u_int)cast_flags, ip_count));

	/*
	 * start_peer is included so we can locate instances of the
	 * same peer through different interfaces in the hash table.
	 * Without MDF_BCLNT, a match requires the same mode and remote
	 * address.  MDF_BCLNT associations start out as MODE_CLIENT
	 * if broadcastdelay is not specified, and switch to
	 * MODE_BCLIENT after estimating the one-way delay.  Duplicate
	 * associations are expanded in definition to match any other
	 * MDF_BCLNT with the same srcadr (remote, unicast address).
	 */
	if (NULL == start_peer)
		peer = peer_hash[FUNC2(addr)];
	else
		peer = start_peer->adr_link;
	
	while (peer != NULL) {
		FUNC1(3, ("%s %s %d %d 0x%x 0x%x ", FUNC4(addr),
			FUNC4(&peer->srcadr), mode, peer->hmode,
			(u_int)cast_flags, (u_int)peer->cast_flags));
		if (ip_count) {
			if (FUNC3(addr, &peer->srcadr)) {
				(*ip_count)++;
			}
		}
 		if ((-1 == mode || peer->hmode == mode ||
		     ((MDF_BCLNT & peer->cast_flags) &&
		      (MDF_BCLNT & cast_flags))) &&
		    FUNC0(addr, &peer->srcadr)) {
			FUNC1(3, ("found.\n"));
			break;
		}
		FUNC1(3, ("\n"));
		peer = peer->adr_link;
	}

	return peer;
}