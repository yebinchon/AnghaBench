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
typedef  int u16 ;
struct sta_info {int /*<<< orphan*/ * challenge; int /*<<< orphan*/  wpa_sm; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct hostapd_data {int dummy; } ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_DEBUG ; 
 int /*<<< orphan*/  HOSTAPD_LEVEL_INFO ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_IEEE80211 ; 
 int /*<<< orphan*/  WLAN_AUTH_CHALLENGE_LEN ; 
 int WLAN_STATUS_CHALLENGE_FAIL ; 
 int WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 int /*<<< orphan*/  WLAN_STA_AUTH ; 
 int /*<<< orphan*/  WPA_AUTH ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC7(struct hostapd_data *hapd, struct sta_info *sta,
			   u16 auth_transaction, const u8 *challenge,
			   int iswep)
{
	FUNC0(hapd, sta->addr, HOSTAPD_MODULE_IEEE80211,
		       HOSTAPD_LEVEL_DEBUG,
		       "authentication (shared key, transaction %d)",
		       auth_transaction);

	if (auth_transaction == 1) {
		if (!sta->challenge) {
			/* Generate a pseudo-random challenge */
			u8 key[8];

			sta->challenge = FUNC4(WLAN_AUTH_CHALLENGE_LEN);
			if (sta->challenge == NULL)
				return WLAN_STATUS_UNSPECIFIED_FAILURE;

			if (FUNC2(key, sizeof(key)) < 0) {
				FUNC1(sta->challenge);
				sta->challenge = NULL;
				return WLAN_STATUS_UNSPECIFIED_FAILURE;
			}

			FUNC5(key, sizeof(key), 0,
				 sta->challenge, WLAN_AUTH_CHALLENGE_LEN);
		}
		return 0;
	}

	if (auth_transaction != 3)
		return WLAN_STATUS_UNSPECIFIED_FAILURE;

	/* Transaction 3 */
	if (!iswep || !sta->challenge || !challenge ||
	    FUNC3(sta->challenge, challenge,
			    WLAN_AUTH_CHALLENGE_LEN)) {
		FUNC0(hapd, sta->addr, HOSTAPD_MODULE_IEEE80211,
			       HOSTAPD_LEVEL_INFO,
			       "shared key authentication - invalid "
			       "challenge-response");
		return WLAN_STATUS_CHALLENGE_FAIL;
	}

	FUNC0(hapd, sta->addr, HOSTAPD_MODULE_IEEE80211,
		       HOSTAPD_LEVEL_DEBUG,
		       "authentication OK (shared key)");
	sta->flags |= WLAN_STA_AUTH;
	FUNC6(sta->wpa_sm, WPA_AUTH);
	FUNC1(sta->challenge);
	sta->challenge = NULL;

	return 0;
}