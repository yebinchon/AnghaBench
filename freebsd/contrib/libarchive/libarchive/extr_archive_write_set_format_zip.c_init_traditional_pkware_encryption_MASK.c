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
struct zip {int written_bytes; int entry_compressed_written; int /*<<< orphan*/  tctx; int /*<<< orphan*/  trad_chkdat; } ;
struct archive_write {int /*<<< orphan*/  archive; struct zip* format_data; } ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int TRAD_HEADER_SIZE ; 
 char* FUNC0 (struct archive_write*) ; 
 int FUNC1 (struct archive_write*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct archive_write *a)
{
	struct zip *zip = a->format_data;
	const char *passphrase;
	uint8_t key[TRAD_HEADER_SIZE];
	uint8_t key_encrypted[TRAD_HEADER_SIZE];
	int ret;

	passphrase = FUNC0(a);
	if (passphrase == NULL) {
		FUNC3(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Encryption needs passphrase");
		return ARCHIVE_FAILED;
	}
	if (FUNC2(key, sizeof(key)-1) != ARCHIVE_OK) {
		FUNC3(&a->archive, ARCHIVE_ERRNO_MISC,
		    "Can't generate random number for encryption");
		return ARCHIVE_FATAL;
	}
	FUNC6(&zip->tctx, passphrase, FUNC4(passphrase));
	/* Set the last key code which will be used as a check code
	 * for verifying passphrase in decryption. */
	key[TRAD_HEADER_SIZE-1] = zip->trad_chkdat;
	FUNC5(&zip->tctx, key, TRAD_HEADER_SIZE,
	    key_encrypted, TRAD_HEADER_SIZE);
	/* Write encrypted keys in the top of the file content. */
	ret = FUNC1(a, key_encrypted, TRAD_HEADER_SIZE);
	if (ret != ARCHIVE_OK)
		return (ret);
	zip->written_bytes += TRAD_HEADER_SIZE;
	zip->entry_compressed_written += TRAD_HEADER_SIZE;
	return (ret);
}