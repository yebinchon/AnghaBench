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
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int AE_IFDIR ; 
 int AE_IFLNK ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_LHA ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,void const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int FUNC15 (struct archive*) ; 
 struct archive* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char const*) ; 
 int /*<<< orphan*/  file1 ; 
 int file1_size ; 
 int /*<<< orphan*/  file2 ; 
 int file2_size ; 

__attribute__((used)) static void
FUNC27(const char *refname, int posix)
{
	struct archive_entry *ae;
	struct archive *a;
	char buff[128];
	const void *pv;
	size_t s;
	int64_t o;
	int uid, gid;

	if (posix)
		uid = gid = 1001;
	else
		uid = gid = 0;

	FUNC26(refname);
	FUNC21((a = FUNC16()) != NULL);
	FUNC23(a, ARCHIVE_OK, FUNC19(a));
	FUNC23(a, ARCHIVE_OK, FUNC20(a));
	FUNC23(a, ARCHIVE_OK,
	    FUNC18(a, refname, 10240));

	/* Verify directory1.  */
	FUNC23(a, ARCHIVE_OK, FUNC17(a, &ae));
	if (posix)
		FUNC22((AE_IFDIR | 0750), FUNC2(ae));
	else
		FUNC22((AE_IFDIR | 0755), FUNC2(ae));
	FUNC25("dir/", FUNC4(ae));
	FUNC22(86401, FUNC3(ae));
	FUNC22(uid, FUNC7(ae));
	FUNC22(gid, FUNC0(ae));
	FUNC22(0, FUNC5(ae));
	FUNC23(a, ARCHIVE_EOF,
	    FUNC13(a, &pv, &s, &o));
	FUNC22(s, 0);
	FUNC22(FUNC1(ae), 0);
	FUNC23(a, FUNC15(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* Verify directory2.  */
	FUNC23(a, ARCHIVE_OK, FUNC17(a, &ae));
	FUNC22((AE_IFDIR | 0755), FUNC2(ae));
	FUNC25("dir2/", FUNC4(ae));
	FUNC22(86401, FUNC3(ae));
	FUNC22(uid, FUNC7(ae));
	FUNC22(gid, FUNC0(ae));
	FUNC22(0, FUNC5(ae));
	FUNC23(a, ARCHIVE_EOF,
	    FUNC13(a, &pv, &s, &o));
	FUNC22(s, 0);
	FUNC22(FUNC1(ae), 0);
	FUNC23(a, FUNC15(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	if (posix) {
		/* Verify symbolic link file1. */
		FUNC23(a, ARCHIVE_OK, FUNC17(a, &ae));
		FUNC22((AE_IFLNK | 0755), FUNC2(ae));
		FUNC25("dir2/symlink1", FUNC4(ae));
		FUNC25("../file1", FUNC6(ae));
		FUNC22(172802, FUNC3(ae));
		FUNC22(uid, FUNC7(ae));
		FUNC22(gid, FUNC0(ae));
		FUNC22(0, FUNC5(ae));
		FUNC22(FUNC1(ae), 0);
		FUNC23(a, FUNC15(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

		/* Verify symbolic link file2. */
		FUNC23(a, ARCHIVE_OK, FUNC17(a, &ae));
		FUNC22((AE_IFLNK | 0755), FUNC2(ae));
		FUNC25("dir2/symlink2", FUNC4(ae));
		FUNC25("../file2", FUNC6(ae));
		FUNC22(172802, FUNC3(ae));
		FUNC22(uid, FUNC7(ae));
		FUNC22(gid, FUNC0(ae));
		FUNC22(0, FUNC5(ae));
		FUNC22(FUNC1(ae), 0);
		FUNC23(a, FUNC15(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	}

	/* Verify regular file1. */
	FUNC23(a, ARCHIVE_OK, FUNC17(a, &ae));
	FUNC22((AE_IFREG | 0644), FUNC2(ae));
	FUNC25("file1", FUNC4(ae));
	FUNC22(86401, FUNC3(ae));
	FUNC22(uid, FUNC7(ae));
	FUNC22(gid, FUNC0(ae));
	FUNC22(file1_size, FUNC5(ae));
	FUNC22(file1_size, FUNC12(a, buff, file1_size));
	FUNC24(buff, file1, file1_size);
	FUNC22(FUNC1(ae), 0);
	FUNC23(a, FUNC15(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* Verify regular file2. */
	FUNC23(a, ARCHIVE_OK, FUNC17(a, &ae));
	if (posix)
		FUNC22((AE_IFREG | 0666), FUNC2(ae));
	else
		FUNC22((AE_IFREG | 0644), FUNC2(ae));
	FUNC25("file2", FUNC4(ae));
	FUNC22(86401, FUNC3(ae));
	FUNC22(uid, FUNC7(ae));
	FUNC22(gid, FUNC0(ae));
	FUNC22(file2_size, FUNC5(ae));
	FUNC22(file2_size, FUNC12(a, buff, file2_size));
	FUNC24(buff, file2, file2_size);
	FUNC22(FUNC1(ae), 0);
	FUNC23(a, FUNC15(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* Verify the number of files read. */
	if (posix) {
		FUNC22(6, FUNC8(a));
	} else {
		FUNC22(4, FUNC8(a));
	}

	/* End of archive. */
	FUNC23(a, ARCHIVE_EOF, FUNC17(a, &ae));

	/* Verify the number of files read. */
	if (posix) {
		FUNC22(6, FUNC8(a));
	} else {
		FUNC22(4, FUNC8(a));
	}

	/* Verify encryption status */
	FUNC22(FUNC1(ae), 0);
	FUNC23(a, FUNC15(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* Verify archive format. */
	FUNC23(a, ARCHIVE_FILTER_NONE, FUNC9(a, 0));
	FUNC23(a, ARCHIVE_FORMAT_LHA, FUNC10(a));

	/* Close the archive. */
	FUNC22(ARCHIVE_OK, FUNC11(a));
	FUNC22(ARCHIVE_OK, FUNC14(a));
}