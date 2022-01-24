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
struct sta_info {int /*<<< orphan*/  eapol_sm; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(struct hostapd_data *hapd,
				   struct sta_info *sta, u8 *msk, size_t *len)
{
	const u8 *key;
	size_t keylen;

	if (!sta->eapol_sm)
		return -1;

	key = FUNC0(sta->eapol_sm, &keylen);
	if (key == NULL) {
		FUNC3(MSG_DEBUG,
			   "MACsec: Failed to get MSK from EAPOL state machines");
		return -1;
	}
	FUNC3(MSG_DEBUG, "MACsec: Successfully fetched key (len=%lu)",
		   (unsigned long) keylen);
	FUNC2(MSG_DEBUG, "MSK: ", key, keylen);

	if (keylen > *len)
		keylen = *len;
	FUNC1(msk, key, keylen);
	*len = keylen;

	return 0;
}