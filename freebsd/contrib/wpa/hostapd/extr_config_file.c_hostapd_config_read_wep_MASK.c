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
struct hostapd_wep_keys {size_t* len; scalar_t__ keys_set; int /*<<< orphan*/ ** key; } ;

/* Variables and functions */
 int NUM_WEP_KEYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/ * FUNC3 (char*,size_t) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct hostapd_wep_keys *wep, int keyidx,
				   char *val)
{
	size_t len = FUNC4(val);

	if (keyidx < 0 || keyidx > 3)
		return -1;

	if (len == 0) {
		int i, set = 0;

		FUNC0(wep->key[keyidx], wep->len[keyidx]);
		wep->key[keyidx] = NULL;
		wep->len[keyidx] = 0;
		for (i = 0; i < NUM_WEP_KEYS; i++) {
			if (wep->key[i])
				set++;
		}
		if (!set)
			wep->keys_set = 0;
		return 0;
	}

	if (wep->key[keyidx] != NULL)
		return -1;

	if (val[0] == '"') {
		if (len < 2 || val[len - 1] != '"')
			return -1;
		len -= 2;
		wep->key[keyidx] = FUNC3(val + 1, len);
		if (wep->key[keyidx] == NULL)
			return -1;
		wep->len[keyidx] = len;
	} else {
		if (len & 1)
			return -1;
		len /= 2;
		wep->key[keyidx] = FUNC2(len);
		if (wep->key[keyidx] == NULL)
			return -1;
		wep->len[keyidx] = len;
		if (FUNC1(val, wep->key[keyidx], len) < 0)
			return -1;
	}

	wep->keys_set++;

	return 0;
}