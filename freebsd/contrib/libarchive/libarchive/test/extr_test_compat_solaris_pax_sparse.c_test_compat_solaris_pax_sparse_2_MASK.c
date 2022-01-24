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
typedef  int int64_t ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 int ARCHIVE_FILTER_COMPRESS ; 
 int ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE ; 
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive_entry*) ; 
 int FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*,int*,int*) ; 
 int FUNC6 (struct archive_entry*) ; 
 int FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*) ; 
 int FUNC9 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct archive*) ; 
 int FUNC11 (struct archive*) ; 
 int FUNC12 (struct archive*,void const**,size_t*,int*) ; 
 int FUNC13 (struct archive*) ; 
 struct archive* FUNC14 () ; 
 int FUNC15 (struct archive*,struct archive_entry**) ; 
 int FUNC16 (struct archive*,char*,int) ; 
 int FUNC17 (struct archive*) ; 
 int FUNC18 (struct archive*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char,int) ; 

__attribute__((used)) static void
FUNC27(void)
{
	char name[] = "test_compat_solaris_pax_sparse_2.pax.Z";
	struct archive_entry *ae;
	struct archive *a;
	int64_t offset, length;
	const void *buff;
	size_t bytes_read;
	int r;

	FUNC19((a = FUNC14()) != NULL);
	FUNC21(a, ARCHIVE_OK, FUNC17(a));
	FUNC21(a, ARCHIVE_OK, FUNC18(a));
	FUNC24(name);
	FUNC21(a, ARCHIVE_OK, FUNC16(a, name, 10240));

	/* Read first entry. */
	FUNC21(a, ARCHIVE_OK, r = FUNC15(a, &ae));
	if (r != ARCHIVE_OK) {
		FUNC13(a);
		return;
	}
	FUNC23("hole", FUNC4(ae));
	FUNC20(1310416789, FUNC3(ae));
	FUNC20(101, FUNC7(ae));
	FUNC23("cue", FUNC8(ae));
	FUNC20(10, FUNC0(ae));
	FUNC23("staff", FUNC1(ae));
	FUNC20(0100644, FUNC2(ae));

	/* Verify the sparse information. */
	FUNC25("This sparse file should have two data blocks");
	FUNC20(2, FUNC6(ae));
	FUNC20(ARCHIVE_OK,
	    FUNC5(ae, &offset, &length));
	FUNC20(393216, offset);
	FUNC20(131072, length);
	FUNC20(ARCHIVE_OK,
	    FUNC5(ae, &offset, &length));
	FUNC20(786432, offset);
	FUNC20(32799, length);
	while (ARCHIVE_OK ==
	    FUNC12(a, &buff, &bytes_read, &offset)) {
		FUNC25("The data blocks should not include the hole");
		FUNC19((offset >= 393216 && offset + bytes_read <= 393216+131072) ||
		       (offset >= 786432 && offset + bytes_read <= 786432+32799));
		if (offset + bytes_read == 819231 && bytes_read >= 31) {
			char data[32];
			const char *last = buff;
			last += bytes_read - 31;
			FUNC26(data, 'c', 31);
			FUNC25("Last 31 bytes should be all 'c'");
			FUNC22(last, data, 31);
		}
	}

	/* Verify the end-of-archive. */
	FUNC21(a, ARCHIVE_EOF, FUNC15(a, &ae));

	/* Verify that the format detection worked. */
	FUNC20(FUNC9(a, 0), ARCHIVE_FILTER_COMPRESS);
	FUNC20(FUNC10(a), ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE);

	FUNC20(ARCHIVE_OK, FUNC11(a));
	FUNC20(ARCHIVE_OK, FUNC13(a));
}