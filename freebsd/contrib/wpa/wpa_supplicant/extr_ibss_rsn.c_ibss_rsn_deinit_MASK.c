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
struct ibss_rsn_peer {struct ibss_rsn_peer* next; } ;
struct ibss_rsn {scalar_t__ auth_group; struct ibss_rsn_peer* peers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibss_rsn_peer*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibss_rsn*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct ibss_rsn *ibss_rsn)
{
	struct ibss_rsn_peer *peer, *prev;

	if (ibss_rsn == NULL)
		return;

	peer = ibss_rsn->peers;
	while (peer) {
		prev = peer;
		peer = peer->next;
		FUNC0(prev);
	}

	if (ibss_rsn->auth_group)
		FUNC2(ibss_rsn->auth_group);
	FUNC1(ibss_rsn);

}