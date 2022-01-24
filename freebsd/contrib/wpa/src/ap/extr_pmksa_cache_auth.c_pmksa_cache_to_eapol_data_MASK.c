#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rsn_pmksa_cache_entry {int /*<<< orphan*/  acct_multi_session_id; int /*<<< orphan*/  vlan_desc; int /*<<< orphan*/  eap_type_authsrv; int /*<<< orphan*/  radius_class; scalar_t__ cui; int /*<<< orphan*/  identity_len; scalar_t__ identity; } ;
struct hostapd_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ count; scalar_t__ attr; } ;
struct eapol_state_machine {int /*<<< orphan*/  acct_multi_session_id; int /*<<< orphan*/  sta; int /*<<< orphan*/  eap_type_authsrv; TYPE_1__ radius_class; int /*<<< orphan*/  radius_cui; int /*<<< orphan*/  identity_len; scalar_t__ identity; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct hostapd_data *hapd,
			       struct rsn_pmksa_cache_entry *entry,
			       struct eapol_state_machine *eapol)
{
	if (entry == NULL || eapol == NULL)
		return;

	if (entry->identity) {
		FUNC1(eapol->identity);
		eapol->identity = FUNC2(entry->identity_len);
		if (eapol->identity) {
			eapol->identity_len = entry->identity_len;
			FUNC3(eapol->identity, entry->identity,
				  entry->identity_len);
		}
		FUNC6(MSG_DEBUG, "STA identity from PMKSA",
				  eapol->identity, eapol->identity_len);
	}

	if (entry->cui) {
		FUNC9(eapol->radius_cui);
		eapol->radius_cui = FUNC8(entry->cui);
	}

#ifndef CONFIG_NO_RADIUS
	FUNC5(&eapol->radius_class);
	FUNC4(&eapol->radius_class, &entry->radius_class);
#endif /* CONFIG_NO_RADIUS */
	if (eapol->radius_class.attr) {
		FUNC7(MSG_DEBUG, "Copied %lu Class attribute(s) from "
			   "PMKSA", (unsigned long) eapol->radius_class.count);
	}

	eapol->eap_type_authsrv = entry->eap_type_authsrv;
#ifndef CONFIG_NO_VLAN
	FUNC0(hapd, eapol->sta, entry->vlan_desc);
#endif /* CONFIG_NO_VLAN */

	eapol->acct_multi_session_id = entry->acct_multi_session_id;
}