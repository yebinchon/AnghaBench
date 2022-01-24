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
struct lafe_line_reader {int dummy; } ;
struct cpio {int compress; int add_filter; int /*<<< orphan*/  linkresolver; int /*<<< orphan*/ * archive; int /*<<< orphan*/  quiet; scalar_t__ dot; int /*<<< orphan*/  option_null; int /*<<< orphan*/  filename; int /*<<< orphan*/ * passphrase; int /*<<< orphan*/  bytes_per_block; int /*<<< orphan*/  format; int /*<<< orphan*/ * archive_read_disk; scalar_t__ option_follow_links; scalar_t__ option_append; } ;
struct archive_entry {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
#define  OPTION_B64ENCODE 135 
#define  OPTION_GRZIP 134 
#define  OPTION_LRZIP 133 
#define  OPTION_LZ4 132 
#define  OPTION_LZMA 131 
#define  OPTION_LZOP 130 
#define  OPTION_UUENCODE 129 
#define  OPTION_ZSTD 128 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct archive_entry**,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 () ; 
 int FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC32 (int /*<<< orphan*/ *,struct cpio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (struct cpio*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC34 (struct cpio*,char const*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC36 (int,int /*<<< orphan*/ ,char*,...) ; 
 struct lafe_line_reader* FUNC37 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct lafe_line_reader*) ; 
 char* FUNC39 (struct lafe_line_reader*) ; 
 int /*<<< orphan*/  passphrase_callback ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC40(struct cpio *cpio)
{
	struct archive_entry *entry, *spare;
	struct lafe_line_reader *lr;
	const char *p;
	int r;

	if (cpio->option_append)
		FUNC36(1, 0, "Append mode not yet supported.");

	cpio->archive_read_disk = FUNC8();
	if (cpio->archive_read_disk == NULL)
		FUNC36(1, 0, "Failed to allocate archive object");
	if (cpio->option_follow_links)
		FUNC10(cpio->archive_read_disk);
	else
		FUNC11(cpio->archive_read_disk);
	FUNC9(cpio->archive_read_disk);

	cpio->archive = FUNC27();
	if (cpio->archive == NULL)
		FUNC36(1, 0, "Failed to allocate archive object");
	switch (cpio->compress) {
	case OPTION_GRZIP:
		r = FUNC15(cpio->archive);
		break;
	case 'J':
		r = FUNC23(cpio->archive);
		break;
	case OPTION_LRZIP:
		r = FUNC17(cpio->archive);
		break;
	case OPTION_LZ4:
		r = FUNC18(cpio->archive);
		break;
	case OPTION_LZMA:
		r = FUNC19(cpio->archive);
		break;
	case OPTION_LZOP:
		r = FUNC20(cpio->archive);
		break;
	case OPTION_ZSTD:
		r = FUNC24(cpio->archive);
		break;
	case 'j': case 'y':
		r = FUNC13(cpio->archive);
		break;
	case 'z':
		r = FUNC16(cpio->archive);
		break;
	case 'Z':
		r = FUNC14(cpio->archive);
		break;
	default:
		r = FUNC21(cpio->archive);
		break;
	}
	if (r < ARCHIVE_WARN)
		FUNC36(1, 0, "Requested compression not available");
	switch (cpio->add_filter) {
	case 0:
		r = ARCHIVE_OK;
		break;
	case OPTION_B64ENCODE:
		r = FUNC12(cpio->archive);
		break;
	case OPTION_UUENCODE:
		r = FUNC22(cpio->archive);
		break;
	}
	if (r < ARCHIVE_WARN)
		FUNC36(1, 0, "Requested filter not available");
	r = FUNC30(cpio->archive, cpio->format);
	if (r != ARCHIVE_OK)
		FUNC36(1, 0, "%s", FUNC5(cpio->archive));
	FUNC29(cpio->archive, cpio->bytes_per_block);
	cpio->linkresolver = FUNC3();
	FUNC4(cpio->linkresolver,
	    FUNC7(cpio->archive));
	if (cpio->passphrase != NULL)
		r = FUNC31(cpio->archive,
			cpio->passphrase);
	else
		r = FUNC32(cpio->archive, cpio,
			&passphrase_callback);
	if (r != ARCHIVE_OK)
		FUNC36(1, 0, "%s", FUNC5(cpio->archive));

	/*
	 * The main loop:  Copy each file into the output archive.
	 */
	r = FUNC28(cpio->archive, cpio->filename);
	if (r != ARCHIVE_OK)
		FUNC36(1, 0, "%s", FUNC5(cpio->archive));
	lr = FUNC37("-", cpio->option_null);
	while ((p = FUNC39(lr)) != NULL)
		FUNC34(cpio, p);
	FUNC38(lr);

	/*
	 * The hardlink detection may have queued up a couple of entries
	 * that can now be flushed.
	 */
	entry = NULL;
	FUNC1(cpio->linkresolver, &entry, &spare);
	while (entry != NULL) {
		FUNC33(cpio, entry);
		FUNC0(entry);
		entry = NULL;
		FUNC1(cpio->linkresolver, &entry, &spare);
	}

	r = FUNC25(cpio->archive);
	if (cpio->dot)
		FUNC35(stderr, "\n");
	if (r != ARCHIVE_OK)
		FUNC36(1, 0, "%s", FUNC5(cpio->archive));

	if (!cpio->quiet) {
		int64_t blocks =
			(FUNC6(cpio->archive, 0) + 511)
			/ 512;
		FUNC35(stderr, "%lu %s\n", (unsigned long)blocks,
		    blocks == 1 ? "block" : "blocks");
	}
	FUNC26(cpio->archive);
	FUNC2(cpio->linkresolver);
}