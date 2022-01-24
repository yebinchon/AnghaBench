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
struct ibss_rsn_peer {int /*<<< orphan*/  own_auth_tx; int /*<<< orphan*/  authentication_status; } ;
struct ibss_rsn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBSS_RSN_AUTH_BY_US ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ibss_rsn_peer*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ibss_rsn*,struct ibss_rsn_peer*) ; 
 int /*<<< orphan*/  ibss_rsn_auth_timeout ; 
 struct ibss_rsn_peer* FUNC2 (struct ibss_rsn*,int /*<<< orphan*/  const*) ; 
 struct ibss_rsn_peer* FUNC3 (struct ibss_rsn*,int /*<<< orphan*/  const*) ; 
 int FUNC4 (struct ibss_rsn*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ibss_rsn *ibss_rsn, const u8 *addr)
{
	struct ibss_rsn_peer *peer;
	int res;

	if (!ibss_rsn)
		return -1;

	/* if the peer already exists, exit immediately */
	peer = FUNC2(ibss_rsn, addr);
	if (peer)
		return 0;

	peer = FUNC3(ibss_rsn, addr);
	if (peer == NULL)
		return -1;

	/* Open Authentication: send first Authentication frame */
	res = FUNC4(ibss_rsn, addr, 1);
	if (res) {
		/*
		 * The driver may not support Authentication frame exchange in
		 * IBSS. Ignore authentication and go through EAPOL exchange.
		 */
		peer->authentication_status |= IBSS_RSN_AUTH_BY_US;
		return FUNC1(ibss_rsn, peer);
	} else {
		FUNC5(&peer->own_auth_tx);
		FUNC0(1, 0, ibss_rsn_auth_timeout, peer, NULL);
	}

	return 0;
}