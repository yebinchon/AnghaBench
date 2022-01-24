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
struct rsn_pmksa_cache_entry {int /*<<< orphan*/  akmp; int /*<<< orphan*/  pmk_len; int /*<<< orphan*/  pmk; int /*<<< orphan*/ * spa; struct rsn_pmksa_cache_entry* next; } ;
struct rsn_pmksa_cache {struct rsn_pmksa_cache_entry* pmksa; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int PMKID_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct rsn_pmksa_cache_entry * FUNC2(
	struct rsn_pmksa_cache *pmksa, const u8 *aa, const u8 *spa,
	const u8 *pmkid)
{
	struct rsn_pmksa_cache_entry *entry;
	u8 new_pmkid[PMKID_LEN];

	for (entry = pmksa->pmksa; entry; entry = entry->next) {
		if (FUNC0(entry->spa, spa, ETH_ALEN) != 0)
			continue;
		FUNC1(entry->pmk, entry->pmk_len, aa, spa, new_pmkid,
			  entry->akmp);
		if (FUNC0(new_pmkid, pmkid, PMKID_LEN) == 0)
			return entry;
	}
	return NULL;
}