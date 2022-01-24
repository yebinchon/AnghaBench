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
struct vlan_description {int dummy; } ;
struct rsn_pmksa_cache_entry {int opportunistic; int /*<<< orphan*/ * vlan_desc; int /*<<< orphan*/  eap_type_authsrv; int /*<<< orphan*/  radius_class; scalar_t__ cui; int /*<<< orphan*/  identity_len; int /*<<< orphan*/  const* identity; int /*<<< orphan*/  const* spa; int /*<<< orphan*/  akmp; int /*<<< orphan*/  expiration; int /*<<< orphan*/  pmk_len; int /*<<< orphan*/  const* pmk; int /*<<< orphan*/  const* pmkid; } ;
struct rsn_pmksa_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  PMKID_LEN ; 
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rsn_pmksa_cache*,struct rsn_pmksa_cache_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

struct rsn_pmksa_cache_entry *
FUNC6(struct rsn_pmksa_cache *pmksa,
		    const struct rsn_pmksa_cache_entry *old_entry,
		    const u8 *aa, const u8 *pmkid)
{
	struct rsn_pmksa_cache_entry *entry;

	entry = FUNC2(sizeof(*entry));
	if (entry == NULL)
		return NULL;
	FUNC1(entry->pmkid, pmkid, PMKID_LEN);
	FUNC1(entry->pmk, old_entry->pmk, old_entry->pmk_len);
	entry->pmk_len = old_entry->pmk_len;
	entry->expiration = old_entry->expiration;
	entry->akmp = old_entry->akmp;
	FUNC1(entry->spa, old_entry->spa, ETH_ALEN);
	entry->opportunistic = 1;
	if (old_entry->identity) {
		entry->identity = FUNC0(old_entry->identity_len);
		if (entry->identity) {
			entry->identity_len = old_entry->identity_len;
			FUNC1(entry->identity, old_entry->identity,
				  old_entry->identity_len);
		}
	}
	if (old_entry->cui)
		entry->cui = FUNC5(old_entry->cui);
#ifndef CONFIG_NO_RADIUS
	FUNC4(&entry->radius_class, &old_entry->radius_class);
#endif /* CONFIG_NO_RADIUS */
	entry->eap_type_authsrv = old_entry->eap_type_authsrv;
	if (old_entry->vlan_desc) {
		entry->vlan_desc = FUNC2(sizeof(struct vlan_description));
		if (entry->vlan_desc)
			*entry->vlan_desc = *old_entry->vlan_desc;
	} else {
		entry->vlan_desc = NULL;
	}
	entry->opportunistic = 1;

	FUNC3(pmksa, entry);

	return entry;
}