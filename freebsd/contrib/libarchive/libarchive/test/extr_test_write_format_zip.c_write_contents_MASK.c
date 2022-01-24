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
 int AE_IFLNK ; 
 int AE_IFREG ; 
 int ARCHIVE_OK ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 struct archive_entry* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 

__attribute__((used)) static void
FUNC26(struct archive *a)
{
	struct archive_entry *ae;

	/*
	 * First write things with the "default" compression.
	 * The library will choose "deflate" for most things if it's
	 * available, else "store".
	 */

	/*
	 * Write a file to it.
	 */
	FUNC21((ae = FUNC6()) != NULL);
	FUNC9(ae, 1, 10);
	FUNC0(ae, "file");
	FUNC8(ae, AE_IFREG | 0755);
	FUNC10(ae, 8);
	FUNC22(0, FUNC18(a, ae));
	FUNC2(ae);
	FUNC22(8, FUNC15(a, "12345678", 9));
	FUNC22(0, FUNC15(a, "1", 1));

	/*
	 * Write another file to it.
	 */
	FUNC21((ae = FUNC6()) != NULL);
	FUNC9(ae, 1, 10);
	FUNC0(ae, "file2");
	FUNC8(ae, AE_IFREG | 0755);
	FUNC10(ae, 4);
	FUNC22(ARCHIVE_OK, FUNC18(a, ae));
	FUNC2(ae);
	FUNC22(4, FUNC15(a, "1234", 4));

	/*
	 * Write a file with an unknown size.
	 */
	FUNC21((ae = FUNC6()) != NULL);
	FUNC9(ae, 2, 15);
	FUNC0(ae, "file3");
	FUNC8(ae, AE_IFREG | 0621);
	FUNC13(ae);
	FUNC22(ARCHIVE_OK, FUNC18(a, ae));
	FUNC2(ae);
	FUNC22(5, FUNC15(a, "mnopq", 5));

	/*
	 * Write symbolic link.
	 */
	FUNC21((ae = FUNC6()) != NULL);
	FUNC9(ae, 1, 10);
	FUNC22(1, FUNC4(ae));
	FUNC22(10, FUNC5(ae));
	FUNC0(ae, "symlink");
	FUNC24("symlink", FUNC7(ae));
	FUNC1(ae, "file1");
	FUNC24("file1", FUNC12(ae));
	FUNC8(ae, AE_IFLNK | 0755);
	FUNC22((AE_IFLNK | 0755), FUNC3(ae));
	FUNC10(ae, 4);

	FUNC22(ARCHIVE_OK, FUNC18(a, ae));
	FUNC2(ae);

	/*
	 * Write a directory to it.
	 */
	FUNC21((ae = FUNC6()) != NULL);
	FUNC9(ae, 11, 110);
	FUNC0(ae, "dir");
	FUNC8(ae, S_IFDIR | 0755);
	FUNC10(ae, 512);
	FUNC23(a, ARCHIVE_OK, FUNC18(a, ae));
	FUNC25("size should be zero so that applications know not to write");
	FUNC22(0, FUNC11(ae));
	FUNC2(ae);
	FUNC23(a, 0, FUNC15(a, "12345678", 9));

	/*
	 * Force "deflate" compression if the platform supports it.
	 */
#ifdef HAVE_ZLIB_H
	assertEqualIntA(a, ARCHIVE_OK, archive_write_zip_set_compression_deflate(a));

	/*
	 * Write a file to it.
	 */
	assert((ae = archive_entry_new()) != NULL);
	archive_entry_set_mtime(ae, 1, 10);
	archive_entry_copy_pathname(ae, "file_deflate");
	archive_entry_set_mode(ae, AE_IFREG | 0755);
	archive_entry_set_size(ae, 8);
	assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
	archive_entry_free(ae);
	assertEqualInt(8, archive_write_data(a, "12345678", 9));
	assertEqualInt(0, archive_write_data(a, "1", 1));

	/*
	 * Write another file to it.
	 */
	assert((ae = archive_entry_new()) != NULL);
	archive_entry_set_mtime(ae, 1, 10);
	archive_entry_copy_pathname(ae, "file2_deflate");
	archive_entry_set_mode(ae, AE_IFREG | 0755);
	archive_entry_set_size(ae, 4);
	assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
	archive_entry_free(ae);
	assertEqualInt(4, archive_write_data(a, "1234", 4));

	/*
	 * Write a file with an unknown size.
	 */
	assert((ae = archive_entry_new()) != NULL);
	archive_entry_set_mtime(ae, 2, 15);
	archive_entry_copy_pathname(ae, "file3_deflate");
	archive_entry_set_mode(ae, AE_IFREG | 0621);
	archive_entry_unset_size(ae);
	assertEqualInt(ARCHIVE_OK, archive_write_header(a, ae));
	archive_entry_free(ae);
	assertEqualInt(5, archive_write_data(a, "ghijk", 5));

	/*
	 * Write symbolic like file to it.
	 */
	assert((ae = archive_entry_new()) != NULL);
	archive_entry_set_mtime(ae, 1, 10);
	archive_entry_copy_pathname(ae, "symlink_deflate");
	archive_entry_copy_symlink(ae, "file1");
	archive_entry_set_mode(ae, AE_IFLNK | 0755);
	archive_entry_set_size(ae, 4);
	assertEqualInt(ARCHIVE_OK, archive_write_header(a, ae));
	archive_entry_free(ae);

	/*
	 * Write a directory to it.
	 */
	assert((ae = archive_entry_new()) != NULL);
	archive_entry_set_mtime(ae, 11, 110);
	archive_entry_copy_pathname(ae, "dir_deflate");
	archive_entry_set_mode(ae, S_IFDIR | 0755);
	archive_entry_set_size(ae, 512);
	assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
	failure("size should be zero so that applications know not to write");
	assertEqualInt(0, archive_entry_size(ae));
	archive_entry_free(ae);
	assertEqualIntA(a, 0, archive_write_data(a, "12345678", 9));
	assertEqualIntA(a, ARCHIVE_OK, archive_write_finish_entry(a));
#endif

	/*
	 * Now write a bunch of entries with "store" compression.
	 */
	FUNC23(a, ARCHIVE_OK, FUNC20(a));

	/*
	 * Write a file to it.
	 */
	FUNC21((ae = FUNC6()) != NULL);
	FUNC9(ae, 1, 10);
	FUNC0(ae, "file_stored");
	FUNC8(ae, AE_IFREG | 0755);
	FUNC10(ae, 8);
	FUNC22(0, FUNC18(a, ae));
	FUNC2(ae);
	FUNC22(8, FUNC15(a, "12345678", 9));
	FUNC22(0, FUNC15(a, "1", 1));

	/*
	 * Write another file to it.
	 */
	FUNC21((ae = FUNC6()) != NULL);
	FUNC9(ae, 1, 10);
	FUNC0(ae, "file2_stored");
	FUNC8(ae, AE_IFREG | 0755);
	FUNC10(ae, 4);
	FUNC22(ARCHIVE_OK, FUNC18(a, ae));
	FUNC2(ae);
	FUNC22(4, FUNC15(a, "ACEG", 4));

	/*
	 * Write a file with an unknown size.
	 */
	FUNC21((ae = FUNC6()) != NULL);
	FUNC9(ae, 2, 15);
	FUNC0(ae, "file3_stored");
	FUNC8(ae, AE_IFREG | 0621);
	FUNC13(ae);
	FUNC22(ARCHIVE_OK, FUNC18(a, ae));
	FUNC2(ae);
	FUNC22(5, FUNC15(a, "ijklm", 5));

	/*
	 * Write symbolic like file to it.
	 */
	FUNC21((ae = FUNC6()) != NULL);
	FUNC9(ae, 1, 10);
	FUNC0(ae, "symlink_stored");
	FUNC1(ae, "file1");
	FUNC8(ae, AE_IFLNK | 0755);
	FUNC10(ae, 4);
	FUNC22(ARCHIVE_OK, FUNC18(a, ae));
	FUNC2(ae);

	/*
	 * Write a directory to it.
	 */
	FUNC21((ae = FUNC6()) != NULL);
	FUNC9(ae, 11, 110);
	FUNC0(ae, "dir_stored");
	FUNC8(ae, S_IFDIR | 0755);
	FUNC10(ae, 512);
	FUNC23(a, ARCHIVE_OK, FUNC18(a, ae));
	FUNC25("size should be zero so that applications know not to write");
	FUNC22(0, FUNC11(ae));
	FUNC2(ae);
	FUNC23(a, 0, FUNC15(a, "12345678", 9));


	/* Close out the archive. */
	FUNC22(ARCHIVE_OK, FUNC14(a));
	FUNC22(ARCHIVE_OK, FUNC17(a));
}