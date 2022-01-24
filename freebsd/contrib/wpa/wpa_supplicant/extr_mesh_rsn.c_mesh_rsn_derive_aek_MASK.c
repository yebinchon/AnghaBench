#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {int /*<<< orphan*/  aek; TYPE_1__* sae; int /*<<< orphan*/ * addr; } ;
struct mesh_rsn {TYPE_2__* wpa_s; } ;
typedef  int /*<<< orphan*/  context ;
struct TYPE_4__ {int /*<<< orphan*/ * own_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  pmk; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  RSN_AUTH_KEY_MGMT_SAE ; 
 int RSN_SELECTOR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct mesh_rsn *rsn, struct sta_info *sta)
{
	u8 *myaddr = rsn->wpa_s->own_addr;
	u8 *peer = sta->addr;
	u8 *addr1, *addr2;
	u8 context[RSN_SELECTOR_LEN + 2 * ETH_ALEN], *ptr = context;

	/*
	 * AEK = KDF-Hash-256(PMK, "AEK Derivation", Selected AKM Suite ||
	 *       min(localMAC, peerMAC) || max(localMAC, peerMAC))
	 */
	/* Selected AKM Suite: SAE */
	FUNC0(ptr, RSN_AUTH_KEY_MGMT_SAE);
	ptr += RSN_SELECTOR_LEN;

	if (FUNC1(myaddr, peer, ETH_ALEN) < 0) {
		addr1 = myaddr;
		addr2 = peer;
	} else {
		addr1 = peer;
		addr2 = myaddr;
	}
	FUNC2(ptr, addr1, ETH_ALEN);
	ptr += ETH_ALEN;
	FUNC2(ptr, addr2, ETH_ALEN);

	FUNC3(sta->sae->pmk, sizeof(sta->sae->pmk), "AEK Derivation",
		   context, sizeof(context), sta->aek, sizeof(sta->aek));
}