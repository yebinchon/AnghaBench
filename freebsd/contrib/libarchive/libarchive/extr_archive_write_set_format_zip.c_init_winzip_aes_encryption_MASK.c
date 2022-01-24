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
struct zip {scalar_t__ entry_encryption; size_t written_bytes; size_t entry_compressed_written; int /*<<< orphan*/  cctx; int /*<<< orphan*/  hctx; } ;
struct archive_write {int /*<<< orphan*/  archive; struct zip* format_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ ENCRYPTION_WINZIP_AES128 ; 
 int MAX_DERIVED_KEY_BUF_SIZE ; 
 char* FUNC0 (struct archive_write*) ; 
 int FUNC1 (struct archive_write*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static int
FUNC9(struct archive_write *a)
{
	struct zip *zip = a->format_data;
	const char *passphrase;
	size_t key_len, salt_len;
	uint8_t salt[16 + 2];
	uint8_t derived_key[MAX_DERIVED_KEY_BUF_SIZE];
	int ret;

	passphrase = FUNC0(a);
	if (passphrase == NULL) {
		FUNC7(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Encryption needs passphrase");
		return (ARCHIVE_FAILED);
	}
	if (zip->entry_encryption == ENCRYPTION_WINZIP_AES128) {
		salt_len = 8;
		key_len = 16;
	} else {
		/* AES 256 */
		salt_len = 16;
		key_len = 32;
	}
	if (FUNC6(salt, salt_len) != ARCHIVE_OK) {
		FUNC7(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Can't generate random number for encryption");
		return (ARCHIVE_FATAL);
	}
	FUNC5(passphrase, FUNC8(passphrase),
	    salt, salt_len, 1000, derived_key, key_len * 2 + 2);

	ret = FUNC2(&zip->cctx, derived_key, key_len);
	if (ret != 0) {
		FUNC7(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Decryption is unsupported due to lack of crypto library");
		return (ARCHIVE_FAILED);
	}
	ret = FUNC4(&zip->hctx, derived_key + key_len,
	    key_len);
	if (ret != 0) {
		FUNC3(&zip->cctx);
		FUNC7(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Failed to initialize HMAC-SHA1");
		return (ARCHIVE_FAILED);
        }

	/* Set a password verification value after the 'salt'. */
	salt[salt_len] = derived_key[key_len * 2];
	salt[salt_len + 1] = derived_key[key_len * 2 + 1];

	/* Write encrypted keys in the top of the file content. */
	ret = FUNC1(a, salt, salt_len + 2);
	if (ret != ARCHIVE_OK)
		return (ret);
	zip->written_bytes += salt_len + 2;
	zip->entry_compressed_written += salt_len + 2;

	return (ARCHIVE_OK);
}