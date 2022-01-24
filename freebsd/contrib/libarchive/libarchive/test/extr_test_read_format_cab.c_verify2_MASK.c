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
typedef  int /*<<< orphan*/  zero ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  enum comp_type { ____Placeholder_comp_type } comp_type ;

/* Variables and functions */
 int AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_CAB ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int MSZIP ; 
 int STORE ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int FUNC12 (struct archive*) ; 
 struct archive* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*) ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char const*) ; 
 int /*<<< orphan*/  file2 ; 
 int file2_size ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (char*,char const*) ; 

__attribute__((used)) static void
FUNC27(const char *refname, enum comp_type comp)
{
	struct archive_entry *ae;
	struct archive *a;
	char buff[128];
	char zero[128];

	if (comp == MSZIP && FUNC18() == NULL) {
		FUNC26("Skipping CAB format(MSZIP) check for %s",
		  refname);
		return;
	}
	FUNC25(zero, 0, sizeof(zero));
	FUNC24(refname);
	FUNC19((a = FUNC13()) != NULL);
	FUNC21(a, ARCHIVE_OK, FUNC16(a));
	FUNC21(a, ARCHIVE_OK, FUNC17(a));
	FUNC21(a, ARCHIVE_OK,
	    FUNC15(a, refname, 10240));

	/* Verify regular empty. */
	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	if (comp != STORE) {
		FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
		FUNC20(FUNC1(ae), 0);
		FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	}
	/* Verify regular file1. */
	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC20(FUNC1(ae), 0);
	FUNC21(a, FUNC12(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* Verify regular file2. */
	FUNC21(a, ARCHIVE_OK, FUNC14(a, &ae));
	FUNC20((AE_IFREG | 0666), FUNC2(ae));
	FUNC23("dir2/file2", FUNC3(ae));
	FUNC20(0, FUNC5(ae));
	FUNC20(0, FUNC0(ae));
	FUNC20(file2_size, FUNC4(ae));
	FUNC20(file2_size, FUNC10(a, buff, file2_size));
	FUNC22(buff, file2, file2_size);

	/* End of archive. */
	FUNC21(a, ARCHIVE_EOF, FUNC14(a, &ae));

	if (comp != STORE) {
		FUNC20(4, FUNC6(a));
	} else {
		FUNC20(3, FUNC6(a));
	}

	/* Verify archive format. */
	FUNC21(a, ARCHIVE_FILTER_NONE, FUNC7(a, 0));
	FUNC21(a, ARCHIVE_FORMAT_CAB, FUNC8(a));

	/* Close the archive. */
	FUNC20(ARCHIVE_OK, FUNC9(a));
	FUNC20(ARCHIVE_OK, FUNC11(a));
}