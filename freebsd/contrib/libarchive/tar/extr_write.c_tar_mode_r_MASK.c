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
struct bsdtar {int fd; int /*<<< orphan*/  filename; int /*<<< orphan*/  cset; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 scalar_t__ ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_BASE_MASK ; 
 int ARCHIVE_FORMAT_EMPTY ; 
 int ARCHIVE_FORMAT_TAR_PAX_RESTRICTED ; 
 int ARCHIVE_OK ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (struct archive*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 scalar_t__ FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 struct archive* FUNC6 () ; 
 scalar_t__ FUNC7 (struct archive*,struct archive_entry**) ; 
 int FUNC8 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 struct archive* FUNC13 () ; 
 int FUNC14 (struct archive*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC20 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC21 (int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC22 (struct bsdtar*,struct archive*) ; 
 int /*<<< orphan*/  FUNC23 (struct bsdtar*,struct archive*) ; 
 int /*<<< orphan*/  FUNC24 (struct bsdtar*) ; 
 int /*<<< orphan*/  FUNC25 (struct archive*,struct bsdtar*) ; 

void
FUNC26(struct bsdtar *bsdtar)
{
	int64_t	end_offset;
	int	format;
	struct archive *a;
	struct archive_entry *entry;
	int	r;

	/* Sanity-test some arguments and the file. */
	FUNC24(bsdtar);

	format = ARCHIVE_FORMAT_TAR_PAX_RESTRICTED;

#if defined(__BORLANDC__)
	bsdtar->fd = open(bsdtar->filename, O_RDWR | O_CREAT | O_BINARY);
#else
	bsdtar->fd = FUNC21(bsdtar->filename, O_RDWR | O_CREAT | O_BINARY, 0666);
#endif
	if (bsdtar->fd < 0)
		FUNC19(1, errno,
		    "Cannot open %s", bsdtar->filename);

	a = FUNC6();
	FUNC9(a);
	FUNC10(a);
	FUNC12(a);
	FUNC11(a);
	FUNC22(bsdtar, a);
	r = FUNC8(a, bsdtar->fd, 10240);
	if (r != ARCHIVE_OK)
		FUNC19(1, FUNC0(a),
		    "Can't read archive %s: %s", bsdtar->filename,
		    FUNC1(a));
	while (0 == FUNC7(a, &entry)) {
		if (FUNC2(a, 0) != ARCHIVE_FILTER_NONE) {
			FUNC4(a);
			FUNC17(bsdtar->fd);
			FUNC19(1, 0,
			    "Cannot append to compressed archive.");
		}
		/* Keep going until we hit end-of-archive */
		format = FUNC3(a);
	}

	end_offset = FUNC5(a);
	FUNC4(a);

	/* Re-open archive for writing */
	a = FUNC13();
	/*
	 * Set the format to be used for writing.  To allow people to
	 * extend empty files, we need to allow them to specify the format,
	 * which opens the possibility that they will specify a format that
	 * doesn't match the existing format.  Hence, the following bit
	 * of arcane ugliness.
	 */

	if (FUNC18(bsdtar->cset) != NULL) {
		/* If the user requested a format, use that, but ... */
		FUNC16(a,
		    FUNC18(bsdtar->cset));
		/* ... complain if it's not compatible. */
		format &= ARCHIVE_FORMAT_BASE_MASK;
		if (format != (int)(FUNC3(a) & ARCHIVE_FORMAT_BASE_MASK)
		    && format != ARCHIVE_FORMAT_EMPTY) {
			FUNC19(1, 0,
			    "Format %s is incompatible with the archive %s.",
			    FUNC18(bsdtar->cset), bsdtar->filename);
		}
	} else {
		/*
		 * Just preserve the current format, with a little care
		 * for formats that libarchive can't write.
		 */
		if (format == ARCHIVE_FORMAT_EMPTY)
			format = ARCHIVE_FORMAT_TAR_PAX_RESTRICTED;
		FUNC15(a, format);
	}
	if (FUNC20(bsdtar->fd, end_offset, SEEK_SET) < 0)
		FUNC19(1, errno, "Could not seek to archive end");
	FUNC23(bsdtar, a);
	if (ARCHIVE_OK != FUNC14(a, bsdtar->fd))
		FUNC19(1, 0, "%s", FUNC1(a));

	FUNC25(a, bsdtar); /* XXX check return val XXX */

	FUNC17(bsdtar->fd);
	bsdtar->fd = -1;
}