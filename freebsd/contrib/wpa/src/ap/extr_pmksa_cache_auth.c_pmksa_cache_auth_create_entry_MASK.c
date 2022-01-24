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
struct rsn_pmksa_cache_entry {size_t pmk_len; int expiration; int akmp; int /*<<< orphan*/  spa; int /*<<< orphan*/  pmkid; int /*<<< orphan*/  pmk; } ;
struct os_reltime {int sec; } ;
struct eapol_state_machine {int dummy; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 size_t PMKID_LEN ; 
 size_t PMK_LEN_MAX ; 
 int WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 ; 
 scalar_t__ dot11RSNAConfigPMKLifetime ; 
 int /*<<< orphan*/  FUNC0 (struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 struct rsn_pmksa_cache_entry* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rsn_pmksa_cache_entry*,struct eapol_state_machine*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

struct rsn_pmksa_cache_entry *
FUNC8(const u8 *pmk, size_t pmk_len, const u8 *pmkid,
			      const u8 *kck, size_t kck_len, const u8 *aa,
			      const u8 *spa, int session_timeout,
			      struct eapol_state_machine *eapol, int akmp)
{
	struct rsn_pmksa_cache_entry *entry;
	struct os_reltime now;

	if (pmk_len > PMK_LEN_MAX)
		return NULL;

	if (FUNC7(akmp) && !kck)
		return NULL;

	entry = FUNC2(sizeof(*entry));
	if (entry == NULL)
		return NULL;
	FUNC1(entry->pmk, pmk, pmk_len);
	entry->pmk_len = pmk_len;
	if (pmkid)
		FUNC1(entry->pmkid, pmkid, PMKID_LEN);
	else if (akmp == WPA_KEY_MGMT_IEEE8021X_SUITE_B_192)
		FUNC6(kck, kck_len, aa, spa, entry->pmkid);
	else if (FUNC7(akmp))
		FUNC5(kck, kck_len, aa, spa, entry->pmkid);
	else
		FUNC4(pmk, pmk_len, aa, spa, entry->pmkid, akmp);
	FUNC0(&now);
	entry->expiration = now.sec;
	if (session_timeout > 0)
		entry->expiration += session_timeout;
	else
		entry->expiration += dot11RSNAConfigPMKLifetime;
	entry->akmp = akmp;
	FUNC1(entry->spa, spa, ETH_ALEN);
	FUNC3(entry, eapol);

	return entry;
}