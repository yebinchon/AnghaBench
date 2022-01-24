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
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_ZIP ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 char* FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*) ; 
 scalar_t__ FUNC6 (struct archive*) ; 
 char* FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 char* FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,char**,int) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,void const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 
 int FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char**,char,int) ; 

__attribute__((used)) static void
FUNC26(struct archive *a, int seek_checks)
{
	struct archive_entry *ae;
	char *buff[128];
	const void *pv;
	size_t s;
	int64_t o;

	FUNC21(a, ARCHIVE_OK, FUNC17(a, &ae));
	FUNC23("ZIP 1.0 (uncompressed)", FUNC11(a));
	FUNC23("dir/", FUNC3(ae));
	FUNC20(1179604249, FUNC2(ae));
	FUNC20(0, FUNC4(ae));
	if (seek_checks)
		FUNC20(AE_IFDIR | 0755, FUNC1(ae));
	FUNC20(FUNC0(ae), 0);
	FUNC21(a, FUNC16(a), 0);
	FUNC21(a, ARCHIVE_EOF,
	    FUNC14(a, &pv, &s, &o));
	FUNC20((int)s, 0);

	FUNC21(a, ARCHIVE_OK, FUNC17(a, &ae));
	FUNC23("ZIP 2.0 (deflation)", FUNC11(a));
	FUNC23("file1", FUNC3(ae));
	FUNC20(1179604289, FUNC2(ae));
	if (seek_checks)
		FUNC20(AE_IFREG | 0755, FUNC1(ae));
	FUNC20(18, FUNC4(ae));
	FUNC20(FUNC0(ae), 0);
	FUNC21(a, FUNC16(a), 0);
	FUNC24("archive_read_data() returns number of bytes read");
	if (FUNC18() != NULL) {
		FUNC20(18, FUNC13(a, buff, 19));
		FUNC22(buff, "hello\nhello\nhello\n", 18);
	} else {
		FUNC20(ARCHIVE_FAILED, FUNC13(a, buff, 19));
		FUNC23(FUNC7(a),
		    "Unsupported ZIP compression method (8: deflation)");
		FUNC19(FUNC6(a) != 0);
	}

	FUNC21(a, ARCHIVE_OK, FUNC17(a, &ae));
	FUNC23("ZIP 2.0 (deflation)", FUNC11(a));
	FUNC23("file2", FUNC3(ae));
	FUNC20(1179605932, FUNC2(ae));
	FUNC20(FUNC0(ae), 0);
	FUNC21(a, FUNC16(a), 0);
	if (seek_checks) {
		FUNC20(AE_IFREG | 0755, FUNC1(ae));
	}
	FUNC19(FUNC5(ae));
	FUNC20(18, FUNC4(ae));
	if (FUNC18() != NULL) {
		FUNC24("file2 has a bad CRC, so read should fail and not change buff");
		FUNC25(buff, 'a', 19);
		FUNC20(ARCHIVE_WARN, FUNC13(a, buff, 19));
		FUNC22(buff, "aaaaaaaaaaaaaaaaaaa", 19);
	} else {
		FUNC20(ARCHIVE_FAILED, FUNC13(a, buff, 19));
		FUNC23(FUNC7(a),
		    "Unsupported ZIP compression method (8: deflation)");
		FUNC19(FUNC6(a) != 0);
	}
	FUNC20(ARCHIVE_EOF, FUNC17(a, &ae));
	FUNC23("ZIP 2.0 (deflation)", FUNC11(a));
	/* Verify the number of files read. */
	FUNC24("the archive file has three files");
	FUNC20(3, FUNC8(a));
	FUNC21(a, ARCHIVE_FILTER_NONE, FUNC9(a, 0));
	FUNC21(a, ARCHIVE_FORMAT_ZIP, FUNC10(a));
	FUNC21(a, ARCHIVE_OK, FUNC12(a));
	FUNC20(ARCHIVE_OK, FUNC15(a));
}