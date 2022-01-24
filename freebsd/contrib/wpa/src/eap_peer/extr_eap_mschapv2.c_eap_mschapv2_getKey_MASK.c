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
struct eap_sm {int dummy; } ;
struct eap_mschapv2_data {int /*<<< orphan*/  master_key; int /*<<< orphan*/  success; int /*<<< orphan*/  master_key_valid; } ;

/* Variables and functions */
 int MSCHAPV2_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u8 * FUNC4(struct eap_sm *sm, void *priv, size_t *len)
{
	struct eap_mschapv2_data *data = priv;
	u8 *key;
	int key_len;

	if (!data->master_key_valid || !data->success)
		return NULL;

	key_len = 2 * MSCHAPV2_KEY_LEN;

	key = FUNC2(key_len);
	if (key == NULL)
		return NULL;

	/* MSK = server MS-MPPE-Recv-Key | MS-MPPE-Send-Key, i.e.,
	 *	peer MS-MPPE-Send-Key | MS-MPPE-Recv-Key */
	if (FUNC0(data->master_key, key, MSCHAPV2_KEY_LEN, 1,
				    0) < 0 ||
	    FUNC0(data->master_key, key + MSCHAPV2_KEY_LEN,
				    MSCHAPV2_KEY_LEN, 0, 0) < 0) {
		FUNC1(key);
		return NULL;
	}

	FUNC3(MSG_DEBUG, "EAP-MSCHAPV2: Derived key",
			key, key_len);

	*len = key_len;
	return key;
}