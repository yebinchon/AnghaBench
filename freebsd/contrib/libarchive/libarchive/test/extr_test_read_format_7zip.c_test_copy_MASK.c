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
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_7ZIP ; 
 int ARCHIVE_OK ; 
 scalar_t__ ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 scalar_t__ FUNC11 (struct archive*) ; 
 struct archive* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (char const*) ; 
 int FUNC25 (char const*,int) ; 

__attribute__((used)) static void
FUNC26(int use_open_fd)
{
	const char *refname = "test_read_format_7zip_copy.7z";
	struct archive_entry *ae;
	struct archive *a;
	char buff[128];
	int fd = -1;

	FUNC24(refname);
	FUNC18((a = FUNC12()) != NULL);
	FUNC20(a, ARCHIVE_OK, FUNC16(a));
	FUNC20(a, ARCHIVE_OK, FUNC17(a));
	if (use_open_fd) {
		fd = FUNC25(refname, O_RDONLY | O_BINARY); 
		FUNC20(a, ARCHIVE_OK,
		    FUNC14(a, fd, 10240));
	} else {
		FUNC20(a, ARCHIVE_OK,
		    FUNC15(a, refname, 10240));
	}

	/* Verify regular file1. */
	FUNC20(a, ARCHIVE_OK, FUNC13(a, &ae));
	FUNC19((AE_IFREG | 0666), FUNC1(ae));
	FUNC22("file1", FUNC3(ae));
	FUNC19(86401, FUNC2(ae));
	FUNC19(60, FUNC4(ae));
	FUNC19(FUNC0(ae), 0);
	FUNC18(FUNC11(a) > ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	FUNC19(60, FUNC9(a, buff, sizeof(buff)));
	FUNC21(buff, "    ", 4);

	FUNC19(1, FUNC5(a));

	/* End of archive. */
	FUNC20(a, ARCHIVE_EOF, FUNC13(a, &ae));

	/* Verify archive format. */
	FUNC20(a, ARCHIVE_FILTER_NONE, FUNC6(a, 0));
	FUNC20(a, ARCHIVE_FORMAT_7ZIP, FUNC7(a));

	/* Close the archive. */
	FUNC19(ARCHIVE_OK, FUNC8(a));
	FUNC19(ARCHIVE_OK, FUNC10(a));
	if (fd != -1)
		FUNC23(fd);
}