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
struct bsdtar {int return_value; int first_fs; int verbose; int /*<<< orphan*/  resolver; int /*<<< orphan*/  gname; int /*<<< orphan*/  uname; int /*<<< orphan*/  gid; struct archive* diskreader; int /*<<< orphan*/  uid; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 scalar_t__ AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct archive_entry**,struct archive_entry**) ; 
 struct archive_entry* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct archive*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct archive*,struct archive_entry*) ; 
 scalar_t__ FUNC17 (struct bsdtar*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct bsdtar*,int /*<<< orphan*/ ,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC22 (struct bsdtar*,struct archive*,struct archive_entry*) ; 

__attribute__((used)) static void
FUNC23(struct bsdtar *bsdtar, struct archive *a, const char *path)
{
	struct archive *disk = bsdtar->diskreader;
	struct archive_entry *entry = NULL, *spare_entry = NULL;
	int r;

	r = FUNC14(disk, path);
	if (r != ARCHIVE_OK) {
		FUNC19(FUNC10(disk),
		    "%s", FUNC11(disk));
		bsdtar->return_value = 1;
		return;
	}
	bsdtar->first_fs = -1;

	for (;;) {
		FUNC1(entry);
		entry = FUNC3();
		r = FUNC16(disk, entry);
		if (r == ARCHIVE_EOF)
			break;
		else if (r != ARCHIVE_OK) {
			FUNC19(FUNC10(disk),
			    "%s", FUNC11(disk));
			if (r == ARCHIVE_FATAL || r == ARCHIVE_FAILED) {
				bsdtar->return_value = 1;
				FUNC1(entry);
				FUNC12(disk);
				return;
			} else if (r < ARCHIVE_WARN)
				continue;
		}

		if (bsdtar->uid >= 0) {
			FUNC8(entry, bsdtar->uid);
			if (!bsdtar->uname)
				FUNC9(entry,
				    FUNC15(bsdtar->diskreader,
					bsdtar->uid));
		}
		if (bsdtar->gid >= 0) {
			FUNC5(entry, bsdtar->gid);
			if (!bsdtar->gname)
				FUNC6(entry,
				    FUNC13(bsdtar->diskreader,
					bsdtar->gid));
		}
		if (bsdtar->uname)
			FUNC9(entry, bsdtar->uname);
		if (bsdtar->gname)
			FUNC6(entry, bsdtar->gname);

		/*
		 * Rewrite the pathname to be archived.  If rewrite
		 * fails, skip the entry.
		 */
		if (FUNC17(bsdtar, entry))
			continue;

		/* Display entry as we process it. */
		if (bsdtar->verbose > 1) {
			FUNC21(stderr, "a ");
			FUNC20(bsdtar, stderr, entry);
		} else if (bsdtar->verbose > 0) {
		/* This format is required by SUSv2. */
			FUNC21(stderr, "a %s",
			    FUNC4(entry));
		}

		/* Non-regular files get archived with zero size. */
		if (FUNC0(entry) != AE_IFREG)
			FUNC7(entry, 0);

		FUNC2(bsdtar->resolver, &entry, &spare_entry);

		while (entry != NULL) {
			FUNC22(bsdtar, a, entry);
			FUNC1(entry);
			entry = spare_entry;
			spare_entry = NULL;
		}

		if (bsdtar->verbose)
			FUNC18(stderr, "\n");
	}
	FUNC1(entry);
	FUNC12(disk);
}