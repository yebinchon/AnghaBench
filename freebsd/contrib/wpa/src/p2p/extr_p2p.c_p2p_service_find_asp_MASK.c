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
struct p2ps_advertisement {struct p2ps_advertisement* next; int /*<<< orphan*/  svc_name; int /*<<< orphan*/  hash; } ;
struct p2p_data {struct p2ps_advertisement* p2ps_adv_list; int /*<<< orphan*/  wild_card_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2PS_HASH_LEN ; 
 int /*<<< orphan*/  P2PS_WILD_HASH_STR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,char*,struct p2ps_advertisement*) ; 

__attribute__((used)) static int FUNC4(struct p2p_data *p2p, const u8 *hash)
{
	struct p2ps_advertisement *adv_data;
	int any_wfa;

	FUNC3(p2p, "ASP find - ASP list: %p", p2p->p2ps_adv_list);

	/* Wildcard org.wi-fi.wfds matches any WFA spec defined service */
	any_wfa = FUNC0(hash, p2p->wild_card_hash, P2PS_HASH_LEN) == 0;

	adv_data = p2p->p2ps_adv_list;
	while (adv_data) {
		if (FUNC0(hash, adv_data->hash, P2PS_HASH_LEN) == 0)
			return 1; /* exact hash match */
		if (any_wfa &&
		    FUNC2(adv_data->svc_name, P2PS_WILD_HASH_STR,
			       FUNC1(P2PS_WILD_HASH_STR)) == 0)
			return 1; /* WFA service match */
		adv_data = adv_data->next;
	}

	return 0;
}