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
struct vlan_description {scalar_t__ notempty; } ;
struct sta_info {struct vlan_description* vlan_desc; } ;
struct rsn_pmksa_cache_entry {int /*<<< orphan*/  acct_multi_session_id; struct vlan_description* vlan_desc; int /*<<< orphan*/  eap_type_authsrv; int /*<<< orphan*/  radius_class; int /*<<< orphan*/  cui; scalar_t__ identity; int /*<<< orphan*/  identity_len; } ;
struct eapol_state_machine {int /*<<< orphan*/  acct_multi_session_id; scalar_t__ sta; int /*<<< orphan*/  eap_type_authsrv; int /*<<< orphan*/  radius_class; scalar_t__ radius_cui; int /*<<< orphan*/  identity_len; scalar_t__ identity; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct vlan_description* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct rsn_pmksa_cache_entry *entry,
					struct eapol_state_machine *eapol)
{
	struct vlan_description *vlan_desc;

	if (eapol == NULL)
		return;

	if (eapol->identity) {
		entry->identity = FUNC0(eapol->identity_len);
		if (entry->identity) {
			entry->identity_len = eapol->identity_len;
			FUNC1(entry->identity, eapol->identity,
				  eapol->identity_len);
		}
	}

	if (eapol->radius_cui)
		entry->cui = FUNC4(eapol->radius_cui);

#ifndef CONFIG_NO_RADIUS
	FUNC3(&entry->radius_class, &eapol->radius_class);
#endif /* CONFIG_NO_RADIUS */

	entry->eap_type_authsrv = eapol->eap_type_authsrv;

	vlan_desc = ((struct sta_info *) eapol->sta)->vlan_desc;
	if (vlan_desc && vlan_desc->notempty) {
		entry->vlan_desc = FUNC2(sizeof(struct vlan_description));
		if (entry->vlan_desc)
			*entry->vlan_desc = *vlan_desc;
	} else {
		entry->vlan_desc = NULL;
	}

	entry->acct_multi_session_id = eapol->acct_multi_session_id;
}