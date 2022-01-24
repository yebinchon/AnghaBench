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
 int ARCHIVE_EOF ; 
 int ARCHIVE_FILTER_NONE ; 
 int ARCHIVE_FORMAT_CAB ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int STORE ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int FUNC6 (struct archive*) ; 
 struct archive* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC17(const char *refname, enum comp_type comp)
{
	struct archive_entry *ae;
	struct archive *a;
	char zero[128];

	FUNC16(zero, 0, sizeof(zero));
	FUNC15(refname);
	FUNC12((a = FUNC7()) != NULL);
	FUNC14(a, ARCHIVE_OK, FUNC10(a));
	FUNC14(a, ARCHIVE_OK, FUNC11(a));
	FUNC14(a, ARCHIVE_OK,
	    FUNC9(a, refname, 10240));

	/* Verify regular empty. */
	FUNC14(a, ARCHIVE_OK, FUNC8(a, &ae));
	FUNC13(FUNC0(ae), 0);
	FUNC14(a, FUNC6(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	if (comp != STORE) {
		FUNC14(a, ARCHIVE_OK, FUNC8(a, &ae));
		FUNC13(FUNC0(ae), 0);
		FUNC14(a, FUNC6(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	}
	/* Verify regular file1. */
	FUNC14(a, ARCHIVE_OK, FUNC8(a, &ae));
	FUNC13(FUNC0(ae), 0);
	FUNC14(a, FUNC6(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* Verify regular file2. */
	FUNC14(a, ARCHIVE_OK, FUNC8(a, &ae));
	FUNC13(FUNC0(ae), 0);
	FUNC14(a, FUNC6(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	/* End of archive. */
	FUNC14(a, ARCHIVE_EOF, FUNC8(a, &ae));

	if (comp != STORE) {
		FUNC13(4, FUNC1(a));
	} else {
		FUNC13(3, FUNC1(a));
	}

	/* Verify archive format. */
	FUNC14(a, ARCHIVE_FILTER_NONE, FUNC2(a, 0));
	FUNC14(a, ARCHIVE_FORMAT_CAB, FUNC3(a));

	/* Close the archive. */
	FUNC13(ARCHIVE_OK, FUNC4(a));
	FUNC13(ARCHIVE_OK, FUNC5(a));
}