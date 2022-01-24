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

/* Variables and functions */
 int AE_IFDIR ; 
 int AE_IFLNK ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FAILED ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*) ; 
 char const* FUNC10 (struct archive_entry*) ; 
 int FUNC11 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*) ; 
 int FUNC13 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*) ; 
 struct archive_entry* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct archive_entry*) ; 
 char const* FUNC17 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct archive_entry*) ; 
 char const* FUNC25 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC26 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC27 (struct archive_entry*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct archive_entry*,char const**,void const**,size_t*) ; 
 int /*<<< orphan*/  FUNC29 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC30 (struct archive*) ; 
 int /*<<< orphan*/  FUNC31 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct archive*) ; 
 struct archive* FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC35 (struct archive*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC36 (struct archive*) ; 
 int /*<<< orphan*/  FUNC37 (struct archive*) ; 
 scalar_t__ FUNC38 (struct archive*) ; 
 int /*<<< orphan*/  FUNC39 (struct archive*) ; 
 int /*<<< orphan*/  FUNC40 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC41 (struct archive*) ; 
 int /*<<< orphan*/  FUNC42 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC43 () ; 
 scalar_t__ FUNC44 (struct archive*,char*,size_t,size_t*) ; 
 int FUNC45 (struct archive*) ; 
 int FUNC46 (struct archive*,char const*) ; 
 int /*<<< orphan*/  FUNC47 (int) ; 
 int /*<<< orphan*/  FUNC48 (int) ; 
 int /*<<< orphan*/  FUNC49 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC52 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC53 (char*) ; 
 char* FUNC54 (size_t) ; 
 int /*<<< orphan*/  FUNC55 (char*,...) ; 

__attribute__((used)) static void
FUNC56(const char *option)
{
	char buff2[64];
	size_t buffsize = 1500;
	char *buff;
	struct archive_entry *ae;
	struct archive *a;
	size_t used;
	const char *name;
	const void *value;
	size_t size;

	/* Create a new archive in memory. */
	FUNC47((a = FUNC43()) != NULL);
	if (FUNC45(a) != ARCHIVE_OK) {
		FUNC55("xar is not supported on this platform");
		FUNC50(a, ARCHIVE_OK, FUNC41(a));
		return;
	}
	FUNC48(0 == FUNC38(a));
	if (option != NULL &&
	    FUNC46(a, option) != ARCHIVE_OK) {
		FUNC55("option `%s` is not supported on this platform", option);
		FUNC50(a, ARCHIVE_OK, FUNC41(a));
		return;
	}

	buff = FUNC54(buffsize);
	FUNC47(buff != NULL);

	FUNC48(0 == FUNC44(a, buff, buffsize, &used));

	/*
	 * "file" has a bunch of attributes and 8 bytes of data and
	 * 7 bytes of xattr data and 3 bytes of xattr.
	 */
	FUNC47((ae = FUNC15()) != NULL);
	FUNC18(ae, 2, 20);
	FUNC19(ae, 4, 40);
	FUNC21(ae, 5, 50);
	FUNC4(ae, "file");
	FUNC20(ae, AE_IFREG | 0755);
	FUNC22(ae, 2);
	FUNC23(ae, 8);
	FUNC27(ae, "user.data1", "ABCDEFG", 7);
	FUNC27(ae, "user.data2", "XYZ", 3);
	FUNC50(a, ARCHIVE_OK, FUNC42(a, ae));
	FUNC9(ae);
	FUNC50(a, 8, FUNC40(a, "12345678", 9));

	/*
	 * "file2" is symbolic link to file
	 */
	FUNC47((ae = FUNC15()) != NULL);
	FUNC18(ae, 2, 20);
	FUNC19(ae, 4, 40);
	FUNC21(ae, 5, 50);
	FUNC4(ae, "file2");
	FUNC5(ae, "file");
	FUNC20(ae, AE_IFLNK | 0755);
	FUNC23(ae, 0);
	FUNC50(a, ARCHIVE_OK, FUNC42(a, ae));
	FUNC9(ae);

	/*
	 * "dir/file3" has a bunch of attributes and 8 bytes of data.
	 */
	FUNC47((ae = FUNC15()) != NULL);
	FUNC18(ae, 2, 20);
	FUNC19(ae, 4, 40);
	FUNC21(ae, 5, 50);
	FUNC4(ae, "dir/file");
	FUNC20(ae, AE_IFREG | 0755);
	FUNC23(ae, 8);
	FUNC50(a, ARCHIVE_OK, FUNC42(a, ae));
	FUNC9(ae);
	FUNC50(a, 8, FUNC40(a, "abcdefgh", 9));

	/*
	 * "dir/dir2/file4" is hard link to file
	 */
	FUNC47((ae = FUNC15()) != NULL);
	FUNC18(ae, 2, 20);
	FUNC19(ae, 4, 40);
	FUNC21(ae, 5, 50);
	FUNC4(ae, "dir/dir2/file4");
	FUNC3(ae, "file");
	FUNC20(ae, AE_IFREG | 0755);
	FUNC22(ae, 2);
	FUNC23(ae, 0);
	FUNC50(a, ARCHIVE_OK, FUNC42(a, ae));
	FUNC9(ae);

	/*
	 * "dir/dir3" is a directory
	 */
	FUNC47((ae = FUNC15()) != NULL);
	FUNC18(ae, 2, 20);
	FUNC19(ae, 4, 40);
	FUNC21(ae, 5, 50);
	FUNC4(ae, "dir/dir3");
	FUNC20(ae, AE_IFDIR | 0755);
	FUNC26(ae);
	FUNC50(a, ARCHIVE_OK, FUNC42(a, ae));
	FUNC9(ae);

	/*
	 * Add a wrong path "dir/dir2/file4/wrong"
	 */
	FUNC47((ae = FUNC15()) != NULL);
	FUNC18(ae, 2, 20);
	FUNC19(ae, 4, 40);
	FUNC21(ae, 5, 50);
	FUNC4(ae, "dir/dir2/file4/wrong");
	FUNC20(ae, AE_IFREG | 0755);
	FUNC22(ae, 1);
	FUNC23(ae, 0);
	FUNC50(a, ARCHIVE_FAILED, FUNC42(a, ae));
	FUNC9(ae);

	/*
	 * XXX TODO XXX Archive directory, other file types.
	 * Archive extended attributes, ACLs, other metadata.
	 * Verify they get read back correctly.
	 */

	/* Close out the archive. */
	FUNC50(a, ARCHIVE_OK, FUNC39(a));
	FUNC50(a, ARCHIVE_OK, FUNC41(a));

	/*
	 *
	 * Now, read the data back.
	 *
	 */
	FUNC47((a = FUNC33()) != NULL);
	FUNC50(a, 0, FUNC37(a));
	FUNC50(a, 0, FUNC36(a));
	FUNC50(a, 0, FUNC35(a, buff, used));

	/*
	 * Read "file"
	 */
	FUNC50(a, 0, FUNC34(a, &ae));
	FUNC49(2, FUNC0(ae));
	FUNC49(0, FUNC2(ae));
	FUNC49(4, FUNC6(ae));
	FUNC49(0, FUNC8(ae));
	FUNC49(5, FUNC12(ae));
	FUNC49(0, FUNC14(ae));
	FUNC52("file", FUNC17(ae));
	FUNC47((AE_IFREG | 0755) == FUNC11(ae));
	FUNC49(2, FUNC16(ae));
	FUNC49(8, FUNC24(ae));
	FUNC49(2, FUNC29(ae));
	FUNC49(ARCHIVE_OK,
	    FUNC28(ae, &name, &value, &size));
	FUNC52("user.data2", name);
	FUNC51(value, "XYZ", 3);
	FUNC49(ARCHIVE_OK,
	    FUNC28(ae, &name, &value, &size));
	FUNC52("user.data1", name);
	FUNC51(value, "ABCDEFG", 7);
	FUNC50(a, 8, FUNC31(a, buff2, 10));
	FUNC51(buff2, "12345678", 8);

	/*
	 * Read "file2"
	 */
	FUNC50(a, 0, FUNC34(a, &ae));
	FUNC47(FUNC1(ae));
	FUNC49(2, FUNC0(ae));
	FUNC49(0, FUNC2(ae));
	FUNC47(FUNC7(ae));
	FUNC49(4, FUNC6(ae));
	FUNC49(0, FUNC8(ae));
	FUNC47(FUNC13(ae));
	FUNC49(5, FUNC12(ae));
	FUNC49(0, FUNC14(ae));
	FUNC52("file2", FUNC17(ae));
	FUNC52("file", FUNC25(ae));
	FUNC47((AE_IFLNK | 0755) == FUNC11(ae));
	FUNC49(0, FUNC24(ae));

	/*
	 * Read "dir/file3"
	 */
	FUNC50(a, 0, FUNC34(a, &ae));
	FUNC49(2, FUNC0(ae));
	FUNC49(0, FUNC2(ae));
	FUNC49(4, FUNC6(ae));
	FUNC49(0, FUNC8(ae));
	FUNC49(5, FUNC12(ae));
	FUNC49(0, FUNC14(ae));
	FUNC52("dir/file", FUNC17(ae));
	FUNC47((AE_IFREG | 0755) == FUNC11(ae));
	FUNC49(8, FUNC24(ae));
	FUNC50(a, 8, FUNC31(a, buff2, 10));
	FUNC51(buff2, "abcdefgh", 8);

	/*
	 * Read "dir/dir2/file4"
	 */
	FUNC50(a, 0, FUNC34(a, &ae));
	FUNC47(FUNC1(ae));
	FUNC49(2, FUNC0(ae));
	FUNC49(0, FUNC2(ae));
	FUNC47(FUNC7(ae));
	FUNC49(4, FUNC6(ae));
	FUNC49(0, FUNC8(ae));
	FUNC47(FUNC13(ae));
	FUNC49(5, FUNC12(ae));
	FUNC49(0, FUNC14(ae));
	FUNC52("dir/dir2/file4", FUNC17(ae));
	FUNC52("file", FUNC10(ae));
	FUNC47((AE_IFREG | 0755) == FUNC11(ae));
	FUNC49(2, FUNC16(ae));
	FUNC49(0, FUNC24(ae));

	/*
	 * Read "dir/dir3"
	 */
	FUNC50(a, 0, FUNC34(a, &ae));
	FUNC47(FUNC1(ae));
	FUNC49(2, FUNC0(ae));
	FUNC49(0, FUNC2(ae));
	FUNC47(FUNC7(ae));
	FUNC49(4, FUNC6(ae));
	FUNC49(0, FUNC8(ae));
	FUNC47(FUNC13(ae));
	FUNC49(5, FUNC12(ae));
	FUNC49(0, FUNC14(ae));
	FUNC52("dir/dir3", FUNC17(ae));
	FUNC47((AE_IFDIR | 0755) == FUNC11(ae));

	/*
	 * Verify the end of the archive.
	 */
	FUNC50(a, ARCHIVE_EOF, FUNC34(a, &ae));
	FUNC50(a, ARCHIVE_OK, FUNC30(a));
	FUNC50(a, ARCHIVE_OK, FUNC32(a));

	FUNC53(buff);
}