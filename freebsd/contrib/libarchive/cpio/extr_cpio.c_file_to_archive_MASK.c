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
struct cpio {int return_value; char const* destdir; size_t pass_destpath_alloc; char* pass_destpath; int /*<<< orphan*/ * linkresolver; scalar_t__ option_rename; int /*<<< orphan*/  gname_override; int /*<<< orphan*/  gid_override; int /*<<< orphan*/  uname_override; int /*<<< orphan*/  uid_override; int /*<<< orphan*/  archive_read_disk; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ AE_IFDIR ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char const*) ; 
 scalar_t__ FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct archive_entry**,struct archive_entry**) ; 
 struct archive_entry* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct archive_entry*,int,int /*<<< orphan*/ *) ; 
 char* FUNC12 (char const*) ; 
 int FUNC13 (struct cpio*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*) ; 
 int FUNC21 (char const*) ; 

__attribute__((used)) static int
FUNC22(struct cpio *cpio, const char *srcpath)
{
	const char *destpath;
	struct archive_entry *entry, *spare;
	size_t len;
	int r;

	/*
	 * Create an archive_entry describing the source file.
	 *
	 */
	entry = FUNC5();
	if (entry == NULL)
		FUNC15(1, 0, "Couldn't allocate entry");
	FUNC1(entry, srcpath);
	r = FUNC11(cpio->archive_read_disk,
	    entry, -1, NULL);
	if (r < ARCHIVE_FAILED)
		FUNC15(1, 0, "%s",
		    FUNC10(cpio->archive_read_disk));
	if (r < ARCHIVE_OK)
		FUNC16(0, "%s",
		    FUNC10(cpio->archive_read_disk));
	if (r <= ARCHIVE_FAILED) {
		FUNC3(entry);
		cpio->return_value = 1;
		return (r);
	}

	if (cpio->uid_override >= 0) {
		FUNC8(entry, cpio->uid_override);
		FUNC9(entry, cpio->uname_override);
	}
	if (cpio->gid_override >= 0) {
		FUNC6(entry, cpio->gid_override);
		FUNC7(entry, cpio->gname_override);
	}

	/*
	 * Generate a destination path for this entry.
	 * "destination path" is the name to which it will be copied in
	 * pass mode or the name that will go into the archive in
	 * output mode.
	 */
	destpath = srcpath;
	if (cpio->destdir) {
		len = FUNC21(cpio->destdir) + FUNC21(srcpath) + 8;
		if (len >= cpio->pass_destpath_alloc) {
			while (len >= cpio->pass_destpath_alloc) {
				cpio->pass_destpath_alloc += 512;
				cpio->pass_destpath_alloc *= 2;
			}
			FUNC14(cpio->pass_destpath);
			cpio->pass_destpath = FUNC17(cpio->pass_destpath_alloc);
			if (cpio->pass_destpath == NULL)
				FUNC15(1, ENOMEM,
				    "Can't allocate path buffer");
		}
		FUNC20(cpio->pass_destpath, cpio->destdir);
		FUNC19(cpio->pass_destpath, FUNC18(srcpath));
		destpath = cpio->pass_destpath;
	}
	if (cpio->option_rename)
		destpath = FUNC12(destpath);
	if (destpath == NULL) {
		FUNC3(entry);
		return (0);
	}
	FUNC0(entry, destpath);

	/*
	 * If we're trying to preserve hardlinks, match them here.
	 */
	spare = NULL;
	if (cpio->linkresolver != NULL
	    && FUNC2(entry) != AE_IFDIR) {
		FUNC4(cpio->linkresolver, &entry, &spare);
	}

	if (entry != NULL) {
		r = FUNC13(cpio, entry);
		FUNC3(entry);
		if (spare != NULL) {
			if (r == 0)
				r = FUNC13(cpio, spare);
			FUNC3(spare);
		}
	}
	return (r);
}