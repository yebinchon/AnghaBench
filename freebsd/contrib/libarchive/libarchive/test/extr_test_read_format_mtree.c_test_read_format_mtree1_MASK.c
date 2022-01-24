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
typedef  scalar_t__ uintmax_t ;
typedef  scalar_t__ time_t ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AE_IFDIR ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 scalar_t__ ARCHIVE_FORMAT_MTREE ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive_entry*) ; 
 int FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*) ; 
 int FUNC6 (struct archive_entry*) ; 
 scalar_t__ FUNC7 (struct archive*) ; 
 int FUNC8 (struct archive*) ; 
 scalar_t__ FUNC9 (struct archive*) ; 
 scalar_t__ FUNC10 (struct archive*,char*,int) ; 
 scalar_t__ FUNC11 (struct archive*) ; 
 int FUNC12 (struct archive*) ; 
 struct archive* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int,long long const) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 
 int /*<<< orphan*/  FUNC25 (char const*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (char*,char*) ; 
 scalar_t__ FUNC28 (char*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC29(void)
{
	const char reffile[] = "test_read_format_mtree.mtree";
	char buff[16];
	struct archive_entry *ae;
	struct archive *a;
	FILE *f;
	/* Compute max 64-bit signed twos-complement value
	 * without relying on overflow.  This assumes that long long
	 * is at least 64 bits. */
	static const long long max_int64 = ((((long long)1) << 62) - 1) + (((long long)1) << 62);
	time_t min_time;
	volatile time_t t;

	FUNC25(reffile);

	/*
	 * An access error occurred on some platform when mtree
	 * format handling open a directory. It is for through
	 * the routine which open a directory that we create
	 * "dir" and "dir2" directories.
	 */
	FUNC24("dir", 0775);
	FUNC24("dir2", 0775);

	FUNC19((a = FUNC13()) != NULL);
	FUNC21(a, ARCHIVE_OK,
	    FUNC17(a));
	FUNC21(a, ARCHIVE_OK,
	    FUNC18(a));
	FUNC21(a, ARCHIVE_OK,
	    FUNC16(a, "mtree:checkfs"));
	FUNC21(a, ARCHIVE_OK,
	    FUNC15(a, reffile, 11));

	/*
	 * Read "file", whose data is available on disk.
	 */
	f = FUNC27("file", "wb");
	FUNC19(f != NULL);
	FUNC20(3, FUNC28("hi\n", 1, 3, f));
	FUNC26(f);
	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC20(FUNC8(a), ARCHIVE_FORMAT_MTREE);
	FUNC23(FUNC4(ae), "file");
	FUNC20(FUNC6(ae), 18);
	FUNC20(AE_IFREG, FUNC0(ae));
	FUNC20(FUNC2(ae), AE_IFREG | 0123);
	FUNC20(FUNC5(ae), 3);
	FUNC20(3, FUNC10(a, buff, 3));
	FUNC22(buff, "hi\n", 3);
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir");
	FUNC20(AE_IFDIR, FUNC0(ae));
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir/file with space");
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "file with space");
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2");
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/dir3a");
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/dir3a/indir3a");
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/fullindir2");
	FUNC20(FUNC2(ae), AE_IFREG | 0644);
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/indir2");
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/dir3b");
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/dir3b/indir3b");
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/dir3b/filename\\with_esc\b\t\fapes");
	FUNC20(FUNC0(ae), AE_IFREG);
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "notindir");
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/emptyfile");
	FUNC20(FUNC5(ae), 0);
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/smallfile");
	FUNC20(FUNC5(ae), 1);
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* TODO: Mtree reader should probably return ARCHIVE_WARN for this. */
	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/toosmallfile");
	FUNC20(FUNC5(ae), -1);
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/bigfile");
	FUNC20(FUNC5(ae), max_int64);
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/toobigfile");
	/* Size in mtree is max_int64 + 1; should return max_int64. */
	FUNC20(FUNC5(ae), max_int64);
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/veryoldfile");
	/* The value in the file is MIN_INT64_T, but time_t may be narrower. */
	/* Verify min_time is the smallest possible time_t. */
	min_time = FUNC3(ae);
	FUNC19(min_time <= 0);
	/* Simply asserting min_time - 1 > 0 breaks with some compiler optimizations. */
	t = (time_t)((uintmax_t)min_time - 1);
	FUNC19(t > 0);
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* toooldfile is 1 sec older, which should overflow and get returned
	 * with the same value. */
	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC23(FUNC4(ae), "dir2/toooldfile");
	FUNC20(FUNC3(ae), min_time);
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC21(a, ARCHIVE_EOF, FUNC14(a, &ae));
	FUNC20(20, FUNC7(a));
	FUNC20(ARCHIVE_OK, FUNC9(a));
	FUNC20(ARCHIVE_OK, FUNC11(a));
}