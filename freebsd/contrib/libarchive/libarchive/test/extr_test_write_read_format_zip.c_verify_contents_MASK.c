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
typedef  int /*<<< orphan*/  filedata ;

/* Variables and functions */
 int AE_IFDIR ; 
 int AE_IFLNK ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(struct archive *a, int seeking, int improved_streaming)
{
	char filedata[64];
	struct archive_entry *ae;

	/*
	 * Default compression options:
	 */

	/* Read and verify first file. */
	FUNC15(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC14(1, FUNC3(ae));
	/* Zip doesn't store high-resolution mtime. */
	FUNC14(0, FUNC4(ae));
	FUNC14(0, FUNC0(ae));
	FUNC14(0, FUNC1(ae));
	FUNC17("file", FUNC5(ae));
	if (seeking || improved_streaming) {
		FUNC14(AE_IFREG | 0755, FUNC2(ae));
	}
	FUNC14(8, FUNC6(ae));
	FUNC13(FUNC7(ae));
	FUNC15(a, 8,
	    FUNC10(a, filedata, sizeof(filedata)));
	FUNC16(filedata, "12345678", 8);


	/* Read the second file back. */
	FUNC15(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC14(1, FUNC3(ae));
	FUNC14(0, FUNC4(ae));
	FUNC14(0, FUNC0(ae));
	FUNC14(0, FUNC1(ae));
	FUNC17("file2", FUNC5(ae));
	if (seeking || improved_streaming) {
		FUNC14(AE_IFREG | 0755, FUNC2(ae));
	}
	FUNC14(4, FUNC6(ae));
	FUNC13(FUNC7(ae));
	FUNC15(a, 4,
	    FUNC10(a, filedata, sizeof(filedata)));
	FUNC16(filedata, "1234", 4);

	/* Read the third file back. */
	FUNC15(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC14(2, FUNC3(ae));
	FUNC14(0, FUNC4(ae));
	FUNC14(0, FUNC0(ae));
	FUNC14(0, FUNC1(ae));
	FUNC17("file3", FUNC5(ae));
	if (seeking || improved_streaming) {
		FUNC14(AE_IFREG | 0621, FUNC2(ae));
	}
	if (seeking) {
		FUNC14(5, FUNC6(ae));
	} else {
		FUNC14(0, FUNC7(ae));
	}
	FUNC15(a, 5,
	    FUNC10(a, filedata, sizeof(filedata)));
	FUNC16(filedata, "mnopq", 5);

	/* Read symlink. */
	FUNC15(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC14(1, FUNC3(ae));
	FUNC14(0, FUNC4(ae));
	FUNC14(0, FUNC0(ae));
	FUNC14(0, FUNC1(ae));
	FUNC17("symlink", FUNC5(ae));
	if (seeking || improved_streaming) {
		FUNC14(AE_IFLNK | 0755, FUNC2(ae));
		FUNC14(0, FUNC6(ae));
		FUNC17("file1", FUNC8(ae));
	} else {
		/* Streaming cannot read file type, so
		 * symlink body shows as regular file contents. */
		FUNC14(AE_IFREG | 0664, FUNC2(ae));
		FUNC14(5, FUNC6(ae));
		FUNC13(FUNC7(ae));
	}

	/* Read the dir entry back. */
	FUNC15(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC14(11, FUNC3(ae));
	FUNC14(0, FUNC4(ae));
	FUNC14(0, FUNC0(ae));
	FUNC14(0, FUNC1(ae));
	FUNC17("dir/", FUNC5(ae));
	if (seeking || improved_streaming)
		FUNC14(AE_IFDIR | 0755, FUNC2(ae));
	FUNC14(0, FUNC6(ae));
	FUNC13(FUNC7(ae));
	FUNC15(a, 0, FUNC10(a, filedata, 10));

#ifdef HAVE_ZLIB_H
	/*
	 * Deflate compression option:
	 */

	/* Read and verify first file. */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
	assertEqualInt(1, archive_entry_mtime(ae));
	/* Zip doesn't store high-resolution mtime. */
	assertEqualInt(0, archive_entry_mtime_nsec(ae));
	assertEqualInt(0, archive_entry_atime(ae));
	assertEqualInt(0, archive_entry_ctime(ae));
	assertEqualString("file_deflate", archive_entry_pathname(ae));
	if (seeking || improved_streaming) {
		assertEqualInt(AE_IFREG | 0755, archive_entry_mode(ae));
	}
	assertEqualInt(8, archive_entry_size(ae));
	assert(archive_entry_size_is_set(ae));
	assertEqualIntA(a, 8,
	    archive_read_data(a, filedata, sizeof(filedata)));
	assertEqualMem(filedata, "12345678", 8);


	/* Read the second file back. */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
	assertEqualInt(1, archive_entry_mtime(ae));
	assertEqualInt(0, archive_entry_mtime_nsec(ae));
	assertEqualInt(0, archive_entry_atime(ae));
	assertEqualInt(0, archive_entry_ctime(ae));
	assertEqualString("file2_deflate", archive_entry_pathname(ae));
	if (seeking || improved_streaming) {
		assertEqualInt(AE_IFREG | 0755, archive_entry_mode(ae));
	}
	assertEqualInt(4, archive_entry_size(ae));
	assert(archive_entry_size_is_set(ae));
	assertEqualIntA(a, 4,
	    archive_read_data(a, filedata, sizeof(filedata)));
	assertEqualMem(filedata, "1234", 4);

	/* Read the third file back. */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
	assertEqualInt(2, archive_entry_mtime(ae));
	assertEqualInt(0, archive_entry_mtime_nsec(ae));
	assertEqualInt(0, archive_entry_atime(ae));
	assertEqualInt(0, archive_entry_ctime(ae));
	assertEqualString("file3_deflate", archive_entry_pathname(ae));
	if (seeking || improved_streaming) {
		assertEqualInt(AE_IFREG | 0621, archive_entry_mode(ae));
	}
	if (seeking) {
		assertEqualInt(5, archive_entry_size(ae));
	} else {
		assertEqualInt(0, archive_entry_size_is_set(ae));
	}
	assertEqualIntA(a, 5,
	    archive_read_data(a, filedata, sizeof(filedata)));
	assertEqualMem(filedata, "ghijk", 4);

	/* Read symlink. */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
	assertEqualInt(1, archive_entry_mtime(ae));
	assertEqualInt(0, archive_entry_mtime_nsec(ae));
	assertEqualInt(0, archive_entry_atime(ae));
	assertEqualInt(0, archive_entry_ctime(ae));
	assertEqualString("symlink_deflate", archive_entry_pathname(ae));
	if (seeking || improved_streaming) {
		assertEqualInt(AE_IFLNK | 0755, archive_entry_mode(ae));
		assertEqualInt(0, archive_entry_size(ae));
		assertEqualString("file1", archive_entry_symlink(ae));
	} else {
		assertEqualInt(AE_IFREG | 0664, archive_entry_mode(ae));
		assertEqualInt(5, archive_entry_size(ae));
		assertEqualIntA(a, 5, archive_read_data(a, filedata, 10));
		assertEqualMem(filedata, "file1", 5);
	}

	/* Read the dir entry back. */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
	assertEqualInt(11, archive_entry_mtime(ae));
	assertEqualInt(0, archive_entry_mtime_nsec(ae));
	assertEqualInt(0, archive_entry_atime(ae));
	assertEqualInt(0, archive_entry_ctime(ae));
	assertEqualString("dir_deflate/", archive_entry_pathname(ae));
	if (seeking) {
		assertEqualInt(AE_IFDIR | 0755, archive_entry_mode(ae));
	}
	assertEqualInt(0, archive_entry_size(ae));
	assert(archive_entry_size_is_set(ae));
	assertEqualIntA(a, 0, archive_read_data(a, filedata, 10));
#endif

	/*
	 * Store compression option:
	 */

	/* Read and verify first file. */
	FUNC15(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC14(1, FUNC3(ae));
	/* Zip doesn't store high-resolution mtime. */
	FUNC14(0, FUNC4(ae));
	FUNC14(0, FUNC0(ae));
	FUNC14(0, FUNC1(ae));
	FUNC17("file_stored", FUNC5(ae));
	if (seeking || improved_streaming) {
		FUNC14(AE_IFREG | 0755, FUNC2(ae));
	}
	FUNC13(FUNC7(ae));
	FUNC13(FUNC7(ae));
	FUNC14(8, FUNC6(ae));
	FUNC15(a, 8,
	    FUNC10(a, filedata, sizeof(filedata)));
	FUNC16(filedata, "12345678", 8);


	/* Read the second file back. */
	FUNC15(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC14(1, FUNC3(ae));
	FUNC14(0, FUNC4(ae));
	FUNC14(0, FUNC0(ae));
	FUNC14(0, FUNC1(ae));
	FUNC17("file2_stored", FUNC5(ae));
	if (seeking || improved_streaming) {
		FUNC14(AE_IFREG | 0755, FUNC2(ae));
	}
	FUNC14(4, FUNC6(ae));
	FUNC13(FUNC7(ae));
	FUNC15(a, 4,
	    FUNC10(a, filedata, sizeof(filedata)));
	FUNC16(filedata, "ACEG", 4);

	/* Read the third file back. */
	FUNC15(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC14(2, FUNC3(ae));
	FUNC14(0, FUNC4(ae));
	FUNC14(0, FUNC0(ae));
	FUNC14(0, FUNC1(ae));
	FUNC17("file3_stored", FUNC5(ae));
	if (seeking || improved_streaming)
		FUNC14(AE_IFREG | 0621, FUNC2(ae));
	if (seeking) {
		FUNC14(5, FUNC6(ae));
	} else {
		FUNC14(0, FUNC7(ae));
	}
	FUNC15(a, 5,
	    FUNC10(a, filedata, sizeof(filedata)));
	FUNC16(filedata, "ijklm", 4);

	/* Read symlink. */
	FUNC15(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC14(1, FUNC3(ae));
	FUNC14(0, FUNC4(ae));
	FUNC14(0, FUNC0(ae));
	FUNC14(0, FUNC1(ae));
	FUNC17("symlink_stored", FUNC5(ae));
	if (seeking || improved_streaming) {
		FUNC14(AE_IFLNK | 0755, FUNC2(ae));
		FUNC14(0, FUNC6(ae));
		FUNC17("file1", FUNC8(ae));
	} else {
		FUNC14(AE_IFREG | 0664, FUNC2(ae));
		FUNC14(5, FUNC6(ae));
		FUNC15(a, 5, FUNC10(a, filedata, 10));
		FUNC16(filedata, "file1", 5);
	}

	/* Read the dir entry back. */
	FUNC15(a, ARCHIVE_OK, FUNC12(a, &ae));
	FUNC14(11, FUNC3(ae));
	FUNC14(0, FUNC4(ae));
	FUNC14(0, FUNC0(ae));
	FUNC14(0, FUNC1(ae));
	FUNC17("dir_stored/", FUNC5(ae));
	if (seeking || improved_streaming)
		FUNC14(AE_IFDIR | 0755, FUNC2(ae));
	FUNC14(0, FUNC6(ae));
	FUNC15(a, 0, FUNC10(a, filedata, 10));

	/* Verify the end of the archive. */
	FUNC15(a, ARCHIVE_EOF, FUNC12(a, &ae));
	FUNC14(ARCHIVE_OK, FUNC9(a));
	FUNC14(ARCHIVE_OK, FUNC11(a));
}