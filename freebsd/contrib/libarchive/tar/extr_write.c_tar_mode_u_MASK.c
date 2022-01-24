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
struct bsdtar {int fd; struct archive_dir* archive_dir; int /*<<< orphan*/  bytes_in_last_block; int /*<<< orphan*/  bytes_per_block; struct archive* matching; int /*<<< orphan*/  filename; } ;
struct archive_entry {int dummy; } ;
struct archive_dir_entry {struct archive_dir_entry* name; struct archive_dir_entry* next; } ;
struct archive_dir {int /*<<< orphan*/ * tail; struct archive_dir_entry* head; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  archive_dir ;

/* Variables and functions */
 scalar_t__ ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_TAR_PAX_RESTRICTED ; 
 int ARCHIVE_MATCH_EQUAL ; 
 int ARCHIVE_MATCH_MTIME ; 
 int ARCHIVE_MATCH_OLDER ; 
 scalar_t__ ARCHIVE_OK ; 
 int O_BINARY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 scalar_t__ FUNC1 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct archive*) ; 
 scalar_t__ FUNC3 (struct archive*,int,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 struct archive* FUNC6 () ; 
 scalar_t__ FUNC7 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC8 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 struct archive* FUNC12 () ; 
 scalar_t__ FUNC13 (struct archive*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC18 (struct archive_dir_entry*) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC20 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct archive_dir*,int /*<<< orphan*/ ,int) ; 
 int FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct bsdtar*,struct archive*) ; 
 int /*<<< orphan*/  FUNC24 (struct bsdtar*,struct archive*) ; 
 int /*<<< orphan*/  FUNC25 (struct bsdtar*) ; 
 int /*<<< orphan*/  FUNC26 (struct archive*,struct bsdtar*) ; 

void
FUNC27(struct bsdtar *bsdtar)
{
	int64_t			 end_offset;
	struct archive		*a;
	struct archive_entry	*entry;
	int			 format;
	struct archive_dir_entry	*p;
	struct archive_dir	 archive_dir;

	bsdtar->archive_dir = &archive_dir;
	FUNC21(&archive_dir, 0, sizeof(archive_dir));

	format = ARCHIVE_FORMAT_TAR_PAX_RESTRICTED;

	/* Sanity-test some arguments and the file. */
	FUNC25(bsdtar);

	bsdtar->fd = FUNC22(bsdtar->filename, O_RDWR | O_BINARY);
	if (bsdtar->fd < 0)
		FUNC19(1, errno,
		    "Cannot open %s", bsdtar->filename);

	a = FUNC6();
	FUNC9(a);
	FUNC11(a);
	FUNC10(a);
	FUNC23(bsdtar, a);
	if (FUNC8(a, bsdtar->fd, bsdtar->bytes_per_block)
	    != ARCHIVE_OK) {
		FUNC19(1, 0,
		    "Can't open %s: %s", bsdtar->filename,
		    FUNC0(a));
	}

	/* Build a list of all entries and their recorded mod times. */
	while (0 == FUNC7(a, &entry)) {
		if (FUNC1(a, 0) != ARCHIVE_FILTER_NONE) {
			FUNC4(a);
			FUNC17(bsdtar->fd);
			FUNC19(1, 0,
			    "Cannot append to compressed archive.");
		}
		if (FUNC3(bsdtar->matching,
		    ARCHIVE_MATCH_MTIME | ARCHIVE_MATCH_OLDER |
		    ARCHIVE_MATCH_EQUAL, entry) != ARCHIVE_OK)
			FUNC19(1, 0, "Error : %s",
			    FUNC0(bsdtar->matching));
		/* Record the last format determination we see */
		format = FUNC2(a);
		/* Keep going until we hit end-of-archive */
	}

	end_offset = FUNC5(a);
	FUNC4(a);

	/* Re-open archive for writing. */
	a = FUNC12();
	/*
	 * Set format to same one auto-detected above.
	 */
	FUNC16(a, format);
	FUNC15(a, bsdtar->bytes_per_block);
	FUNC14(a, bsdtar->bytes_in_last_block);

	if (FUNC20(bsdtar->fd, end_offset, SEEK_SET) < 0)
		FUNC19(1, errno, "Could not seek to archive end");
	FUNC24(bsdtar, a);
	if (ARCHIVE_OK != FUNC13(a, bsdtar->fd))
		FUNC19(1, 0, "%s", FUNC0(a));

	FUNC26(a, bsdtar);

	FUNC17(bsdtar->fd);
	bsdtar->fd = -1;

	while (bsdtar->archive_dir->head != NULL) {
		p = bsdtar->archive_dir->head->next;
		FUNC18(bsdtar->archive_dir->head->name);
		FUNC18(bsdtar->archive_dir->head);
		bsdtar->archive_dir->head = p;
	}
	bsdtar->archive_dir->tail = NULL;
}