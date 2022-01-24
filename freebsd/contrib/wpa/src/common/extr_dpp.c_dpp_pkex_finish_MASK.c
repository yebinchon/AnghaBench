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
struct dpp_pkex {int /*<<< orphan*/ * peer_bootstrap_key; TYPE_1__* own_bi; } ;
struct dpp_global {int /*<<< orphan*/  bootstrap; } ;
struct dpp_bootstrap_info {int num_freq; unsigned int* freq; int /*<<< orphan*/  list; int /*<<< orphan*/ * pubkey; int /*<<< orphan*/  curve; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  curve; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPP_BOOTSTRAP_PKEX ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_bootstrap_info*) ; 
 scalar_t__ FUNC2 (struct dpp_bootstrap_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpp_global*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpp_pkex*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct dpp_bootstrap_info* FUNC6 (int) ; 

struct dpp_bootstrap_info *
FUNC7(struct dpp_global *dpp, struct dpp_pkex *pkex, const u8 *peer,
		unsigned int freq)
{
	struct dpp_bootstrap_info *bi;

	bi = FUNC6(sizeof(*bi));
	if (!bi)
		return NULL;
	bi->id = FUNC3(dpp);
	bi->type = DPP_BOOTSTRAP_PKEX;
	FUNC5(bi->mac_addr, peer, ETH_ALEN);
	bi->num_freq = 1;
	bi->freq[0] = freq;
	bi->curve = pkex->own_bi->curve;
	bi->pubkey = pkex->peer_bootstrap_key;
	pkex->peer_bootstrap_key = NULL;
	if (FUNC2(bi) < 0) {
		FUNC1(bi);
		return NULL;
	}
	FUNC4(pkex);
	FUNC0(&dpp->bootstrap, &bi->list);
	return bi;
}