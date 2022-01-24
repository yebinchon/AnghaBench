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

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  PMKID_LEN ; 
 int SHA384_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/  const**,size_t const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/  const**,size_t const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/  const**,size_t const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8(const u8 *pmk, size_t pmk_len, const u8 *aa, const u8 *spa,
	       u8 *pmkid, int akmp)
{
	char *title = "PMK Name";
	const u8 *addr[3];
	const size_t len[3] = { 8, ETH_ALEN, ETH_ALEN };
	unsigned char hash[SHA384_MAC_LEN];

	addr[0] = (u8 *) title;
	addr[1] = aa;
	addr[2] = spa;

	if (0) {
#if defined(CONFIG_FILS) || defined(CONFIG_SHA384)
	} else if (wpa_key_mgmt_sha384(akmp)) {
		wpa_printf(MSG_DEBUG, "RSN: Derive PMKID using HMAC-SHA-384");
		hmac_sha384_vector(pmk, pmk_len, 3, addr, len, hash);
#endif /* CONFIG_FILS || CONFIG_SHA384 */
#if defined(CONFIG_IEEE80211W) || defined(CONFIG_FILS)
	} else if (wpa_key_mgmt_sha256(akmp)) {
		wpa_printf(MSG_DEBUG, "RSN: Derive PMKID using HMAC-SHA-256");
		hmac_sha256_vector(pmk, pmk_len, 3, addr, len, hash);
#endif /* CONFIG_IEEE80211W || CONFIG_FILS */
	} else {
		FUNC7(MSG_DEBUG, "RSN: Derive PMKID using HMAC-SHA-1");
		FUNC0(pmk, pmk_len, 3, addr, len, hash);
	}
	FUNC4(MSG_DEBUG, "RSN: Derived PMKID", hash, PMKID_LEN);
	FUNC3(pmkid, hash, PMKID_LEN);
}