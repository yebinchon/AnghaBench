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
struct wpa_supplicant {struct eapol_sm* eapol; } ;
struct eapol_sm {int dummy; } ;

/* Variables and functions */
 int EAP_MSK_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (struct eapol_sm*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct wpa_supplicant *wpa_s, const u8 *addr,
				   u8 *msk, size_t *len)
{
	u8 key[EAP_MSK_LEN];
	size_t keylen;
	struct eapol_sm *sm;
	int res;

	sm = wpa_s->eapol;
	if (sm == NULL)
		return -1;

	keylen = EAP_MSK_LEN;
	res = FUNC0(sm, key, keylen);
	if (res) {
		FUNC2(MSG_DEBUG,
			   "Failed to get MSK from EAPOL state machines");
		return -1;
	}

	if (keylen > *len)
		keylen = *len;
	FUNC1(msk, key, keylen);
	*len = keylen;

	return 0;
}