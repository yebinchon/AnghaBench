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
typedef  char wchar_t ;
struct write_file_data {scalar_t__ fd; int /*<<< orphan*/  filename; } ;
struct stat {int /*<<< orphan*/  st_ino; int /*<<< orphan*/  st_dev; int /*<<< orphan*/  st_mode; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 scalar_t__ ENOMEM ; 
 int O_BINARY ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 char* FUNC5 (char const*) ; 
 void* FUNC6 (char const*,int,int) ; 
 scalar_t__ FUNC7 (struct archive*,int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC8 (struct archive*,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,scalar_t__,char*,...) ; 
 scalar_t__ FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (scalar_t__,struct stat*) ; 
 scalar_t__ FUNC15 (char const*,int,int) ; 

__attribute__((used)) static int
FUNC16(struct archive *a, void *client_data)
{
	int flags;
	struct write_file_data *mine;
	struct stat st;
#if defined(_WIN32) && !defined(__CYGWIN__)
	wchar_t *fullpath;
#endif
	const wchar_t *wcs;
	const char *mbs;

	mine = (struct write_file_data *)client_data;
	flags = O_WRONLY | O_CREAT | O_TRUNC | O_BINARY | O_CLOEXEC;

	/*
	 * Open the file.
	 */
	mbs = NULL; wcs = NULL;
#if defined(_WIN32) && !defined(__CYGWIN__)
	if (archive_mstring_get_wcs(a, &mine->filename, &wcs) != 0) {
		if (errno == ENOMEM)
			archive_set_error(a, errno, "No memory");
		else {
			archive_mstring_get_mbs(a, &mine->filename, &mbs);
			archive_set_error(a, errno,
			    "Can't convert '%s' to WCS", mbs);
		}
		return (ARCHIVE_FATAL);
	}
	fullpath = __la_win_permissive_name_w(wcs);
	if (fullpath != NULL) {
		mine->fd = _wopen(fullpath, flags, 0666);
		free(fullpath);
	} else
		mine->fd = _wopen(wcs, flags, 0666);
#else
	if (FUNC7(a, &mine->filename, &mbs) != 0) {
		if (errno == ENOMEM)
			FUNC9(a, errno, "No memory");
		else {
			FUNC8(a, &mine->filename, &wcs);
			FUNC9(a, errno,
			    "Can't convert '%S' to MBS", wcs);
		}
		return (ARCHIVE_FATAL);
	}
	mine->fd = FUNC15(mbs, flags, 0666);
	FUNC4(mine->fd);
#endif
	if (mine->fd < 0) {
		if (mbs != NULL)
			FUNC9(a, errno, "Failed to open '%s'", mbs);
		else
			FUNC9(a, errno, "Failed to open '%S'", wcs);
		return (ARCHIVE_FATAL);
	}

	if (FUNC14(mine->fd, &st) != 0) {
		if (mbs != NULL)
			FUNC9(a, errno, "Couldn't stat '%s'", mbs);
		else
			FUNC9(a, errno, "Couldn't stat '%S'", wcs);
		return (ARCHIVE_FATAL);
	}

	/*
	 * Set up default last block handling.
	 */
	if (FUNC10(a) < 0) {
		if (FUNC1(st.st_mode) || FUNC0(st.st_mode) ||
		    FUNC2(st.st_mode))
			/* Pad last block when writing to device or FIFO. */
			FUNC11(a, 0);
		else
			/* Don't pad last block otherwise. */
			FUNC11(a, 1);
	}

	/*
	 * If the output file is a regular file, don't add it to
	 * itself.  If it's a device file, it's okay to add the device
	 * entry to the output archive.
	 */
	if (FUNC3(st.st_mode))
		FUNC12(a, st.st_dev, st.st_ino);

	return (ARCHIVE_OK);
}