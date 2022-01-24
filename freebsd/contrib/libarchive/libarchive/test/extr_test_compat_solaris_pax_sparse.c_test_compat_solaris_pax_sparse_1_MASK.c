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
typedef  size_t int64_t ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 size_t ARCHIVE_FILTER_COMPRESS ; 
 size_t ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE ; 
 int ARCHIVE_OK ; 
 size_t FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 size_t FUNC2 (struct archive_entry*) ; 
 size_t FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 size_t FUNC5 (struct archive_entry*,size_t*,size_t*) ; 
 size_t FUNC6 (struct archive_entry*) ; 
 size_t FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*) ; 
 int FUNC9 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct archive*) ; 
 size_t FUNC11 (struct archive*) ; 
 int FUNC12 (struct archive*,void const**,size_t*,size_t*) ; 
 size_t FUNC13 (struct archive*) ; 
 struct archive* FUNC14 () ; 
 int FUNC15 (struct archive*,struct archive_entry**) ; 
 int FUNC16 (struct archive*,char*,int) ; 
 int FUNC17 (struct archive*) ; 
 int FUNC18 (struct archive*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int,size_t) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char,int) ; 

__attribute__((used)) static void
FUNC27(void)
{
	char name[] = "test_compat_solaris_pax_sparse_1.pax.Z";
	struct archive_entry *ae;
	struct archive *a;
	int64_t offset, length;
	const void *buff;
	size_t bytes_read;
	char data[1024*8];
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
	FUNC20(1310411683, FUNC3(ae));
	FUNC20(101, FUNC7(ae));
	FUNC23("cue", FUNC8(ae));
	FUNC20(10, FUNC0(ae));
	FUNC23("staff", FUNC1(ae));
	FUNC20(0100644, FUNC2(ae));

	/* Verify the sparse information. */
	FUNC25("This sparse file should have tree data blocks");
	FUNC20(3, FUNC6(ae));
	FUNC20(ARCHIVE_OK,
	    FUNC5(ae, &offset, &length));
	FUNC20(0, offset);
	FUNC20(131072, length);
	FUNC20(ARCHIVE_OK,
	    FUNC5(ae, &offset, &length));
	FUNC20(393216, offset);
	FUNC20(131072, length);
	FUNC20(ARCHIVE_OK,
	    FUNC5(ae, &offset, &length));
	FUNC20(786432, offset);
	FUNC20(32775, length);
	while (ARCHIVE_OK ==
	    FUNC12(a, &buff, &bytes_read, &offset)) {
		FUNC25("The data blocks should not include the hole");
		FUNC19((offset >= 0 && offset + bytes_read <= 131072) ||
		       (offset >= 393216 && offset + bytes_read <= 393216+131072) ||
		       (offset >= 786432 && offset + bytes_read <= 786432+32775));
		if (offset == 0 && bytes_read >= 1024*8) {
			FUNC26(data, 'a', sizeof(data));
			FUNC25("First data block should be 8K bytes of 'a'");
			FUNC22(buff, data, sizeof(data));
		} else if (offset + bytes_read == 819207 && bytes_read >= 7) {
			const char *last = buff;
			last += bytes_read - 7;
			FUNC26(data, 'c', 7);
			FUNC25("Last seven bytes should be all 'c'");
			FUNC22(last, data, 7);
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