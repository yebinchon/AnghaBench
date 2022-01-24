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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  archive_hmac_sha1_ctx ;
typedef  int /*<<< orphan*/  archive_crypto_ctx ;

/* Variables and functions */
 scalar_t__ ARCHIVE_OK ; 
 int ENCRYPTION_WINZIP_AES128 ; 
 int MAX_DERIVED_KEY_BUF_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC6(int encryption)
{
	size_t key_len, salt_len;
	uint8_t salt[16 + 2];
	uint8_t derived_key[MAX_DERIVED_KEY_BUF_SIZE];
	archive_crypto_ctx cctx;
	archive_hmac_sha1_ctx hctx;
	int ret;

	if (encryption == ENCRYPTION_WINZIP_AES128) {
		salt_len = 8;
		key_len = 16;
	} else {
		/* AES 256 */
		salt_len = 16;
		key_len = 32;
	}
	if (FUNC5(salt, salt_len) != ARCHIVE_OK)
		return (0);
	ret = FUNC4("p", 1, salt, salt_len, 1000,
	    derived_key, key_len * 2 + 2);
	if (ret != 0)
		return (0);

	ret = FUNC0(&cctx, derived_key, key_len);
	if (ret != 0)
		return (0);
	ret = FUNC3(&hctx, derived_key + key_len,
	    key_len);
	FUNC1(&cctx);
	if (ret != 0)
		return (0);
	FUNC2(&hctx);
	return (1);
}