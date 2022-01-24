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
struct bsdtar {int buff_size; int symlink_mode; char** argv; int return_value; int flags; struct archive* diskreader; int /*<<< orphan*/ * resolver; int /*<<< orphan*/ * buff; int /*<<< orphan*/ * names_from_file; int /*<<< orphan*/  readdisk_flags; int /*<<< orphan*/ * matching; scalar_t__ bytes_per_block; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int OPTFLAG_TOTALS ; 
 scalar_t__ FUNC0 (struct bsdtar*,struct archive*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct archive_entry**,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct archive_entry* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 char* FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct bsdtar*,struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 struct archive* FUNC14 () ; 
 int FUNC15 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bsdtar*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*,int /*<<< orphan*/ *,struct bsdtar*) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*) ; 
 int /*<<< orphan*/  FUNC22 (struct archive*) ; 
 int /*<<< orphan*/  FUNC23 (struct archive*) ; 
 int FUNC24 (struct archive*,struct archive_entry*) ; 
 scalar_t__ FUNC25 (struct archive*) ; 
 int /*<<< orphan*/  FUNC26 (struct archive*) ; 
 int /*<<< orphan*/  FUNC27 (struct bsdtar*) ; 
 int /*<<< orphan*/ * excluded_callback ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC32 (int) ; 
 int /*<<< orphan*/ * metadata_filter ; 
 int /*<<< orphan*/  FUNC33 (struct bsdtar*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct bsdtar*,struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC36 (struct bsdtar*,struct archive*,char const*) ; 

__attribute__((used)) static void
FUNC37(struct archive *a, struct bsdtar *bsdtar)
{
	const char *arg;
	struct archive_entry *entry, *sparse_entry;

	/* Choose a suitable copy buffer size */
	bsdtar->buff_size = 64 * 1024;
	while (bsdtar->buff_size < (size_t)bsdtar->bytes_per_block)
	  bsdtar->buff_size *= 2;
	/* Try to compensate for space we'll lose to alignment. */
	bsdtar->buff_size += 16 * 1024;

	/* Allocate a buffer for file data. */
	if ((bsdtar->buff = FUNC32(bsdtar->buff_size)) == NULL)
		FUNC30(1, 0, "cannot allocate memory");

	if ((bsdtar->resolver = FUNC4()) == NULL)
		FUNC30(1, 0, "cannot create link resolver");
	FUNC5(bsdtar->resolver,
	    FUNC11(a));

	/* Create a read_disk object. */
	if ((bsdtar->diskreader = FUNC14()) == NULL)
		FUNC30(1, 0, "Cannot create read_disk object");
	/* Tell the read_disk how handle symlink. */
	switch (bsdtar->symlink_mode) {
	case 'H':
		FUNC20(bsdtar->diskreader);
		break;
	case 'L':
		FUNC21(bsdtar->diskreader);
		break;
	default:
		FUNC22(bsdtar->diskreader);
		break;
	}
	/* Register entry filters. */
	FUNC17(bsdtar->diskreader,
	    bsdtar->matching, excluded_callback, bsdtar);
	FUNC18(
	    bsdtar->diskreader, metadata_filter, bsdtar);
	/* Set the behavior of archive_read_disk. */
	FUNC16(bsdtar->diskreader,
	    bsdtar->readdisk_flags);
	FUNC19(bsdtar->diskreader);

	if (bsdtar->names_from_file != NULL)
		FUNC12(bsdtar, a);

	while (*bsdtar->argv) {
		arg = *bsdtar->argv;
		if (arg[0] == '-' && arg[1] == 'C') {
			arg += 2;
			if (*arg == '\0') {
				bsdtar->argv++;
				arg = *bsdtar->argv;
				if (arg == NULL) {
					FUNC31(0, "%s",
					    "Missing argument for -C");
					bsdtar->return_value = 1;
					goto cleanup;
				}
				if (*arg == '\0') {
					FUNC31(0,
					    "Meaningless argument for -C: ''");
					bsdtar->return_value = 1;
					goto cleanup;
				}
			}
			FUNC33(bsdtar, arg);
		} else {
			if (*arg != '/')
				FUNC27(bsdtar); /* Handle a deferred -C */
			if (*arg == '@') {
				if (FUNC0(bsdtar, a,
				    arg + 1) != 0)
					break;
			} else
				FUNC36(bsdtar, a, arg);
		}
		bsdtar->argv++;
	}

	FUNC17(bsdtar->diskreader, NULL, NULL, NULL);
	FUNC18(
	    bsdtar->diskreader, NULL, NULL);
	entry = NULL;
	FUNC2(bsdtar->resolver, &entry, &sparse_entry);
	while (entry != NULL) {
		int r;
		struct archive_entry *entry2;
		struct archive *disk = bsdtar->diskreader;

		/*
		 * This tricky code here is to correctly read the contents
		 * of the entry because the disk reader bsdtar->diskreader
		 * is pointing at does not have any information about the
		 * entry by this time and using archive_read_data_block()
		 * with the disk reader consequently must fail. And we
		 * have to re-open the entry to read the contents.
		 */
		/* TODO: Work with -C option as well. */
		r = FUNC15(disk,
			FUNC7(entry));
		if (r != ARCHIVE_OK) {
			FUNC31(FUNC8(disk),
			    "%s", FUNC9(disk));
			bsdtar->return_value = 1;
			goto next_entry;
		}

		/*
		 * Invoke archive_read_next_header2() to work
		 * archive_read_data_block(), which is called via write_file(),
		 * without failure.
		 */
		entry2 = FUNC6();
		r = FUNC24(disk, entry2);
		FUNC1(entry2);
		if (r != ARCHIVE_OK) {
			FUNC31(FUNC8(disk),
			    "%s", FUNC9(disk));
			if (r == ARCHIVE_FATAL)
				bsdtar->return_value = 1;
			FUNC13(disk);
			goto next_entry;
		}

		FUNC35(bsdtar, a, entry);
		FUNC13(disk);
next_entry:
		FUNC1(entry);
		entry = NULL;
		FUNC2(bsdtar->resolver, &entry, &sparse_entry);
	}

	if (FUNC25(a)) {
		FUNC31(0, "%s", FUNC9(a));
		bsdtar->return_value = 1;
	}

cleanup:
	/* Free file data buffer. */
	FUNC29(bsdtar->buff);
	FUNC3(bsdtar->resolver);
	bsdtar->resolver = NULL;
	FUNC23(bsdtar->diskreader);
	bsdtar->diskreader = NULL;

	if (bsdtar->flags & OPTFLAG_TOTALS) {
		FUNC28(stderr, "Total bytes written: %s\n",
		    FUNC34(FUNC10(a, -1)));
	}

	FUNC26(a);
}