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
 struct sta_info* FUNC0 (struct hostapd_data*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(void *ctx, const u8 *addr, u8 *msk,
				    size_t *len)
{
	struct hostapd_data *hapd = ctx;
	const u8 *key;
	size_t keylen;
	struct sta_info *sta;

	sta = FUNC0(hapd, addr);
	if (sta == NULL) {
		FUNC3(MSG_DEBUG, "AUTH_GET_MSK: Cannot find STA");
		return -1;
	}

	key = FUNC1(sta->eapol_sm, &keylen);
	if (key == NULL) {
		FUNC3(MSG_DEBUG, "AUTH_GET_MSK: Key is null, eapol_sm: %p",
			   sta->eapol_sm);
		return -1;
	}

	if (keylen > *len)
		keylen = *len;
	FUNC2(msk, key, keylen);
	*len = keylen;

	return 0;
}