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
struct cpio {scalar_t__ verbose; scalar_t__ buff_size; int /*<<< orphan*/  buff; int /*<<< orphan*/  archive; scalar_t__ option_link; scalar_t__ dot; } ;
struct archive_entry {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ AE_IFREG ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ EXDEV ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 struct archive_entry* FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 char* FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct archive_entry*) ; 
 char* FUNC7 (struct archive_entry*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char*,...) ; 
 int FUNC17 (char const*,int) ; 
 scalar_t__ FUNC18 (int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC19 (struct cpio*,struct archive_entry*,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC20(struct cpio *cpio, struct archive_entry *entry)
{
	const char *destpath = FUNC3(entry);
	const char *srcpath = FUNC7(entry);
	int fd = -1;
	ssize_t bytes_read;
	int r;

	/* Print out the destination name to the user. */
	if (cpio->verbose)
		FUNC14(stderr,"%s", destpath);
	if (cpio->dot)
		FUNC14(stderr, ".");

	/*
	 * Option_link only makes sense in pass mode and for
	 * regular files.  Also note: if a link operation fails
	 * because of cross-device restrictions, we'll fall back
	 * to copy mode for that entry.
	 *
	 * TODO: Test other cpio implementations to see if they
	 * hard-link anything other than regular files here.
	 */
	if (cpio->option_link
	    && FUNC1(entry) == AE_IFREG)
	{
		struct archive_entry *t;
		/* Save the original entry in case we need it later. */
		t = FUNC0(entry);
		if (t == NULL)
			FUNC15(1, ENOMEM, "Can't create link");
		/* Note: link(2) doesn't create parent directories,
		 * so we use archive_write_header() instead as a
		 * convenience. */
		FUNC4(t, srcpath);
		/* This is a straight link that carries no data. */
		FUNC5(t, 0);
		r = FUNC11(cpio->archive, t);
		FUNC2(t);
		if (r != ARCHIVE_OK)
			FUNC16(FUNC8(cpio->archive),
			    "%s", FUNC9(cpio->archive));
		if (r == ARCHIVE_FATAL)
			FUNC13(1);
#ifdef EXDEV
		if (r != ARCHIVE_OK && archive_errno(cpio->archive) == EXDEV) {
			/* Cross-device link:  Just fall through and use
			 * the original entry to copy the file over. */
			lafe_warnc(0, "Copying file instead");
		} else
#endif
		return (0);
	}

	/*
	 * Make sure we can open the file (if necessary) before
	 * trying to write the header.
	 */
	if (FUNC1(entry) == AE_IFREG) {
		if (FUNC6(entry) > 0) {
			fd = FUNC17(srcpath, O_RDONLY | O_BINARY);
			if (fd < 0) {
				FUNC16(errno,
				    "%s: could not open file", srcpath);
				goto cleanup;
			}
		}
	} else {
		FUNC5(entry, 0);
	}

	r = FUNC11(cpio->archive, entry);

	if (r != ARCHIVE_OK)
		FUNC16(FUNC8(cpio->archive),
		    "%s: %s",
		    srcpath,
		    FUNC9(cpio->archive));

	if (r == ARCHIVE_FATAL)
		FUNC13(1);

	if (r >= ARCHIVE_WARN && FUNC6(entry) > 0 && fd >= 0) {
		bytes_read = FUNC18(fd, cpio->buff, (unsigned)cpio->buff_size);
		while (bytes_read > 0) {
			ssize_t bytes_write;
			bytes_write = FUNC10(cpio->archive,
			    cpio->buff, bytes_read);
			if (bytes_write < 0)
				FUNC15(1, FUNC8(cpio->archive),
				    "%s", FUNC9(cpio->archive));
			if (bytes_write < bytes_read) {
				FUNC16(0,
				    "Truncated write; file may have "
				    "grown while being archived.");
			}
			bytes_read = FUNC18(fd, cpio->buff,
			    (unsigned)cpio->buff_size);
		}
	}

	fd = FUNC19(cpio, entry, srcpath, fd);

cleanup:
	if (cpio->verbose)
		FUNC14(stderr,"\n");
	if (fd >= 0)
		FUNC12(fd);
	return (0);
}