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
struct rsn_pmksa_cache_entry {struct rsn_pmksa_cache_entry* next; } ;
struct rsn_pmksa_cache {int /*<<< orphan*/ ** pmkid; struct rsn_pmksa_cache_entry* pmksa; scalar_t__ pmksa_count; } ;

/* Variables and functions */
 int PMKID_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct rsn_pmksa_cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rsn_pmksa_cache*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rsn_pmksa_cache*) ; 
 int /*<<< orphan*/  pmksa_cache_expire ; 

void FUNC3(struct rsn_pmksa_cache *pmksa)
{
	struct rsn_pmksa_cache_entry *entry, *prev;
	int i;

	if (pmksa == NULL)
		return;

	entry = pmksa->pmksa;
	while (entry) {
		prev = entry;
		entry = entry->next;
		FUNC0(prev);
	}
	FUNC1(pmksa_cache_expire, pmksa, NULL);
	pmksa->pmksa_count = 0;
	pmksa->pmksa = NULL;
	for (i = 0; i < PMKID_HASH_SIZE; i++)
		pmksa->pmkid[i] = NULL;
	FUNC2(pmksa);
}