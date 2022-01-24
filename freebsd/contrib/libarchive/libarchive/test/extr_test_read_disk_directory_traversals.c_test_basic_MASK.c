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
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int AE_IFDIR ; 
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  PATH_MAX ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 struct archive_entry* FUNC3 () ; 
 char* FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int FUNC6 (struct archive_entry*) ; 
 int FUNC7 (struct archive*) ; 
 int FUNC8 (struct archive*,void const**,size_t*,scalar_t__*) ; 
 int FUNC9 (struct archive*) ; 
 int FUNC10 (struct archive*) ; 
 struct archive* FUNC11 () ; 
 int FUNC12 (struct archive*,char*) ; 
 int FUNC13 (struct archive*,char*) ; 
 int FUNC14 (struct archive*) ; 
 int FUNC15 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (void const*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 char* FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC27 (int) ; 
 scalar_t__ FUNC28 (char*,char*) ; 
 int /*<<< orphan*/  FUNC29 (char*,char*) ; 
 char* FUNC30 (char*,int) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC32 (char*,char*) ; 
 int FUNC33 (char*) ; 
 char* FUNC34 (char*,int) ; 

__attribute__((used)) static void
FUNC35(void)
{
	struct archive *a;
	struct archive_entry *ae;
	const void *p;
	char *initial_cwd, *cwd;
	size_t size;
	int64_t offset;
	int file_count;
#if defined(_WIN32) && !defined(__CYGWIN__)
	wchar_t *wcwd, *wp, *fullpath;
#endif

	FUNC22("dir1", 0755);
	FUNC23("dir1/file1", 0644, "0123456789");
	FUNC23("dir1/file2", 0644, "hello world");
	FUNC22("dir1/sub1", 0755);
	FUNC23("dir1/sub1/file1", 0644, "0123456789");
	FUNC22("dir1/sub2", 0755);
	FUNC23("dir1/sub2/file1", 0644, "0123456789");
	FUNC23("dir1/sub2/file2", 0644, "0123456789");
	FUNC22("dir1/sub2/sub1", 0755);
	FUNC22("dir1/sub2/sub2", 0755);
	FUNC22("dir1/sub2/sub3", 0755);
	FUNC23("dir1/sub2/sub3/file", 0644, "xyz");
	file_count = 12;

	FUNC16((ae = FUNC3()) != NULL);
	FUNC16((a = FUNC11()) != NULL);
	FUNC18(a, ARCHIVE_OK, FUNC12(a, "dir1"));

	while (file_count--) {
		FUNC18(a, ARCHIVE_OK, FUNC15(a, ae));
		if (FUNC28(FUNC4(ae), "dir1") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC28(FUNC4(ae),
		    "dir1/file1") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 10);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 10);
			FUNC17((int)offset, 0);
			FUNC19(p, "0123456789", 10);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 10);
			FUNC17(0, FUNC9(a));
		} else if (FUNC28(FUNC4(ae),
		    "dir1/file2") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 11);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 11);
			FUNC17((int)offset, 0);
			FUNC19(p, "hello world", 11);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 11);
			FUNC17(0, FUNC9(a));
		} else if (FUNC28(FUNC4(ae),
		    "dir1/sub1") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC28(FUNC4(ae),
		    "dir1/sub1/file1") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 10);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 10);
			FUNC17((int)offset, 0);
			FUNC19(p, "0123456789", 10);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 10);
			FUNC17(0, FUNC9(a));
		} else if (FUNC28(FUNC4(ae),
		    "dir1/sub2") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC28(FUNC4(ae),
		    "dir1/sub2/file1") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 10);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 10);
			FUNC17((int)offset, 0);
			FUNC19(p, "0123456789", 10);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 10);
			FUNC17(0, FUNC9(a));
		} else if (FUNC28(FUNC4(ae),
		    "dir1/sub2/file2") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 10);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 10);
			FUNC17((int)offset, 0);
			FUNC19(p, "0123456789", 10);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 10);
			FUNC17(0, FUNC9(a));
		} else if (FUNC28(FUNC4(ae),
		    "dir1/sub2/sub1") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC28(FUNC4(ae),
		    "dir1/sub2/sub2") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC28(FUNC4(ae),
		    "dir1/sub2/sub3") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC28(FUNC4(ae),
		    "dir1/sub2/sub3/file") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 3);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 3);
			FUNC17((int)offset, 0);
			FUNC19(p, "xyz", 3);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 3);
			FUNC17(0, FUNC9(a));
		}
		if (FUNC1(ae) == AE_IFDIR) {
			/* Descend into the current object */
			FUNC18(a, ARCHIVE_OK,
			    FUNC10(a));
		}
	}
	/* There is no entry. */
	FUNC18(a, ARCHIVE_EOF, FUNC15(a, ae));

	/* Close the disk object. */
	FUNC17(ARCHIVE_OK, FUNC7(a));

	/*
	 * Test that call archive_read_disk_open_w, wchar_t version.
	 */
	FUNC18(a, ARCHIVE_OK, FUNC13(a, L"dir1"));

	file_count = 12;
	while (file_count--) {
		FUNC18(a, ARCHIVE_OK, FUNC15(a, ae));
		if (FUNC31(FUNC5(ae), L"dir1") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC31(FUNC5(ae),
		    L"dir1/file1") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 10);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 10);
			FUNC17((int)offset, 0);
			FUNC19(p, "0123456789", 10);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 10);
			FUNC17(0, FUNC9(a));
		} else if (FUNC31(FUNC5(ae),
		    L"dir1/file2") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 11);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 11);
			FUNC17((int)offset, 0);
			FUNC19(p, "hello world", 11);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 11);
			FUNC17(0, FUNC9(a));
		} else if (FUNC31(FUNC5(ae),
		    L"dir1/sub1") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC31(FUNC5(ae),
		    L"dir1/sub1/file1") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 10);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 10);
			FUNC17((int)offset, 0);
			FUNC19(p, "0123456789", 10);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 10);
			FUNC17(0, FUNC9(a));
		} else if (FUNC31(FUNC5(ae),
		    L"dir1/sub2") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC31(FUNC5(ae),
		    L"dir1/sub2/file1") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 10);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 10);
			FUNC17((int)offset, 0);
			FUNC19(p, "0123456789", 10);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 10);
			FUNC17(0, FUNC9(a));
		} else if (FUNC31(FUNC5(ae),
		    L"dir1/sub2/file2") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 10);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 10);
			FUNC17((int)offset, 0);
			FUNC19(p, "0123456789", 10);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 10);
			FUNC17(0, FUNC9(a));
		} else if (FUNC31(FUNC5(ae),
		    L"dir1/sub2/sub1") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC31(FUNC5(ae),
		    L"dir1/sub2/sub2") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC31(FUNC5(ae),
		    L"dir1/sub2/sub3") == 0) {
			FUNC17(FUNC1(ae), AE_IFDIR);
			FUNC17(1, FUNC9(a));
		} else if (FUNC31(FUNC5(ae),
		    L"dir1/sub2/sub3/file") == 0) {
			FUNC17(FUNC1(ae), AE_IFREG);
			FUNC17(FUNC6(ae), 3);
			FUNC18(a, ARCHIVE_OK,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 3);
			FUNC17((int)offset, 0);
			FUNC19(p, "xyz", 3);
			FUNC17(ARCHIVE_EOF,
			    FUNC8(a, &p, &size, &offset));
			FUNC17((int)size, 0);
			FUNC17((int)offset, 3);
			FUNC17(0, FUNC9(a));
		}
		if (FUNC1(ae) == AE_IFDIR) {
			/* Descend into the current object */
			FUNC18(a, ARCHIVE_OK,
			    FUNC10(a));
		}
	}
	/* There is no entry. */
	FUNC18(a, ARCHIVE_EOF, FUNC15(a, ae));

	/* Close the disk object. */
	FUNC17(ARCHIVE_OK, FUNC7(a));

	/*
	 * Test that call archive_read_disk_open with a regular file.
	 */
	FUNC18(a, ARCHIVE_OK, FUNC12(a, "dir1/file1"));

	/* dir1/file1 */
	FUNC18(a, ARCHIVE_OK, FUNC15(a, ae));
	FUNC17(0, FUNC9(a));
	FUNC20(FUNC4(ae), "dir1/file1");
	FUNC17(FUNC1(ae), AE_IFREG);
	FUNC17(FUNC6(ae), 10);
	FUNC18(a, ARCHIVE_OK,
	    FUNC8(a, &p, &size, &offset));
	FUNC17((int)size, 10);
	FUNC17((int)offset, 0);
	FUNC19(p, "0123456789", 10);

	/* There is no entry. */
	FUNC18(a, ARCHIVE_EOF, FUNC15(a, ae));

	/* Close the disk object. */
	FUNC17(ARCHIVE_OK, FUNC7(a));


#if defined(_WIN32) && !defined(__CYGWIN__)
	/*
	 * Test for wildcard '*' or '?'
	 */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_open(a, "dir1/*1"));

	/* dir1/file1 */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
	assertEqualInt(0, archive_read_disk_can_descend(a));
	assertEqualString(archive_entry_pathname(ae), "dir1/file1");
	assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
	assertEqualInt(archive_entry_size(ae), 10);
	assertEqualIntA(a, ARCHIVE_OK,
	    archive_read_data_block(a, &p, &size, &offset));
	assertEqualInt((int)size, 10);
	assertEqualInt((int)offset, 0);
	assertEqualMem(p, "0123456789", 10);

	/* dir1/sub1 */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
	assertEqualInt(1, archive_read_disk_can_descend(a));
	assertEqualString(archive_entry_pathname(ae), "dir1/sub1");
	assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);

	/* Descend into the current object */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_descend(a));

	/* dir1/sub1/file1 */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
	assertEqualInt(0, archive_read_disk_can_descend(a));
	assertEqualString(archive_entry_pathname(ae), "dir1/sub1/file1");
	assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
	assertEqualInt(archive_entry_size(ae), 10);
	assertEqualIntA(a, ARCHIVE_OK,
	    archive_read_data_block(a, &p, &size, &offset));
	assertEqualInt((int)size, 10);
	assertEqualInt((int)offset, 0);
	assertEqualMem(p, "0123456789", 10);

	/* There is no entry. */
	assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header2(a, ae));

	/* Close the disk object. */
	assertEqualInt(ARCHIVE_OK, archive_read_close(a));

	/*
	 * Test for a full-path beginning with "//?/"
	 */
	wcwd = _wgetcwd(NULL, 0);
	fullpath = malloc(sizeof(wchar_t) * (wcslen(wcwd) + 32));
	wcscpy(fullpath, L"//?/");
	wcscat(fullpath, wcwd);
	wcscat(fullpath, L"/dir1/file1");
	free(wcwd);
	assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_open_w(a, fullpath));
	while ((wcwd = wcschr(fullpath, L'\\')) != NULL)
		*wcwd = L'/';

	/* dir1/file1 */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
	assertEqualInt(0, archive_read_disk_can_descend(a));
	assertEqualWString(archive_entry_pathname_w(ae), fullpath);
	assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
	assertEqualInt(archive_entry_size(ae), 10);
	assertEqualIntA(a, ARCHIVE_OK,
	    archive_read_data_block(a, &p, &size, &offset));
	assertEqualInt((int)size, 10);
	assertEqualInt((int)offset, 0);
	assertEqualMem(p, "0123456789", 10);

	/* There is no entry. */
	assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header2(a, ae));

	/* Close the disk object. */
	assertEqualInt(ARCHIVE_OK, archive_read_close(a));
	free(fullpath);

	/*
	 * Test for wild card '*' or '?' with "//?/" prefix.
	 */
	wcwd = _wgetcwd(NULL, 0);
	fullpath = malloc(sizeof(wchar_t) * (wcslen(wcwd) + 32));
	wcscpy(fullpath, L"//?/");
	wcscat(fullpath, wcwd);
	wcscat(fullpath, L"/dir1/*1");
	free(wcwd);
	assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_open_w(a, fullpath));
	while ((wcwd = wcschr(fullpath, L'\\')) != NULL)
		*wcwd = L'/';

	/* dir1/file1 */
	wp = wcsrchr(fullpath, L'/');
	wcscpy(wp+1, L"file1");
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
	assertEqualInt(0, archive_read_disk_can_descend(a));
	assertEqualWString(archive_entry_pathname_w(ae), fullpath);
	assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
	assertEqualInt(archive_entry_size(ae), 10);
	assertEqualIntA(a, ARCHIVE_OK,
	    archive_read_data_block(a, &p, &size, &offset));
	assertEqualInt((int)size, 10);
	assertEqualInt((int)offset, 0);
	assertEqualMem(p, "0123456789", 10);

	/* dir1/sub1 */
	wcscpy(wp+1, L"sub1");
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
	assertEqualInt(1, archive_read_disk_can_descend(a));
	assertEqualWString(archive_entry_pathname_w(ae), fullpath);
	assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);

	/* Descend into the current object */
	assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_descend(a));

	/* dir1/sub1/file1 */
	wcscpy(wp+1, L"sub1/file1");
	assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header2(a, ae));
	assertEqualInt(0, archive_read_disk_can_descend(a));
	assertEqualWString(archive_entry_pathname_w(ae), fullpath);
	assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
	assertEqualInt(archive_entry_size(ae), 10);
	assertEqualIntA(a, ARCHIVE_OK,
	    archive_read_data_block(a, &p, &size, &offset));
	assertEqualInt((int)size, 10);
	assertEqualInt((int)offset, 0);
	assertEqualMem(p, "0123456789", 10);

	/* There is no entry. */
	assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header2(a, ae));

	/* Close the disk object. */
	assertEqualInt(ARCHIVE_OK, archive_read_close(a));
	free(fullpath);

#endif

	/*
	 * We should be on the initial directory where we performed
	 * archive_read_disk_new() after we perform archive_read_free()
	 * even if we broke off the directory traversals.
	 */

	/* Save current working directory. */
#ifdef PATH_MAX
	initial_cwd = getcwd(NULL, PATH_MAX);/* Solaris getcwd needs the size. */
#else
	initial_cwd = FUNC26(NULL, 0);
#endif

	FUNC18(a, ARCHIVE_OK, FUNC12(a, "dir1"));

	/* Step in a deep directory. */
	file_count = 12;
	while (file_count--) {
		FUNC18(a, ARCHIVE_OK,
		    FUNC15(a, ae));
		if (FUNC28(FUNC4(ae),
		    "dir1/sub1/file1") == 0)
			/*
			 * We are on an another directory at this time.
			 */
			break;
		if (FUNC1(ae) == AE_IFDIR) {
			/* Descend into the current object */
			FUNC18(a, ARCHIVE_OK,
			    FUNC10(a));
		}
	}
	/* Destroy the disk object. */
	FUNC17(ARCHIVE_OK, FUNC14(a));

	/* We should be on the initial working directory. */
	FUNC24(
	    "Current working directory does not return to the initial"
	    "directory");
#ifdef PATH_MAX
	cwd = getcwd(NULL, PATH_MAX);/* Solaris getcwd needs the size. */
#else
	cwd = FUNC26(NULL, 0);
#endif
	FUNC20(initial_cwd, cwd);
	FUNC25(initial_cwd);
	FUNC25(cwd);

	FUNC2(ae);
}