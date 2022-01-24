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
typedef  int /*<<< orphan*/  u32 ;
struct vlan_description {int dummy; } ;
struct os_reltime {int dummy; } ;
struct hostapd_sta_wpa_psk_short {int dummy; } ;
struct hostapd_data {struct hostapd_cached_radius_acl* acl_cache; } ;
struct hostapd_cached_radius_acl {scalar_t__ accepted; scalar_t__ radius_cui; scalar_t__ identity; int /*<<< orphan*/  psk; struct vlan_description vlan_id; int /*<<< orphan*/  acct_interim_interval; int /*<<< orphan*/  session_timeout; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  addr; struct hostapd_cached_radius_acl* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ HOSTAPD_ACL_ACCEPT_TIMEOUT ; 
 int /*<<< orphan*/  RADIUS_ACL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_sta_wpa_psk_short**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct os_reltime*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct os_reltime*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct hostapd_data *hapd, const u8 *addr,
				 u32 *session_timeout,
				 u32 *acct_interim_interval,
				 struct vlan_description *vlan_id,
				 struct hostapd_sta_wpa_psk_short **psk,
				 char **identity, char **radius_cui)
{
	struct hostapd_cached_radius_acl *entry;
	struct os_reltime now;

	FUNC1(&now);

	for (entry = hapd->acl_cache; entry; entry = entry->next) {
		if (FUNC2(entry->addr, addr, ETH_ALEN) != 0)
			continue;

		if (FUNC3(&now, &entry->timestamp,
				       RADIUS_ACL_TIMEOUT))
			return -1; /* entry has expired */
		if (entry->accepted == HOSTAPD_ACL_ACCEPT_TIMEOUT)
			if (session_timeout)
				*session_timeout = entry->session_timeout;
		if (acct_interim_interval)
			*acct_interim_interval =
				entry->acct_interim_interval;
		if (vlan_id)
			*vlan_id = entry->vlan_id;
		FUNC0(psk, entry->psk);
		if (identity) {
			if (entry->identity)
				*identity = FUNC4(entry->identity);
			else
				*identity = NULL;
		}
		if (radius_cui) {
			if (entry->radius_cui)
				*radius_cui = FUNC4(entry->radius_cui);
			else
				*radius_cui = NULL;
		}
		return entry->accepted;
	}

	return -1;
}