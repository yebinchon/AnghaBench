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
#define  AUTH_HMAC_MD5_96 129 
#define  AUTH_HMAC_SHA1_96 128 
 int IKEV2_MAX_HASH_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC3(int alg, const u8 *key, size_t key_len, const u8 *data,
		     size_t data_len, u8 *hash)
{
	u8 tmphash[IKEV2_MAX_HASH_LEN];

	switch (alg) {
	case AUTH_HMAC_SHA1_96:
		if (key_len != 20)
			return -1;
		if (FUNC1(key, key_len, data, data_len, tmphash) < 0)
			return -1;
		FUNC2(hash, tmphash, 12);
		break;
	case AUTH_HMAC_MD5_96:
		if (key_len != 16)
			return -1;
		if (FUNC0(key, key_len, data, data_len, tmphash) < 0)
			return -1;
		FUNC2(hash, tmphash, 12);
		break;
	default:
		return -1;
	}

	return 0;
}