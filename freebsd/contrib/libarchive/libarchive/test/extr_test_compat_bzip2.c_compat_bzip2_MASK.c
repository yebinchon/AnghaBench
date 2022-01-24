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
 scalar_t__ ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_BZIP2 ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_TAR_USTAR ; 
 scalar_t__ ARCHIVE_OK ; 
 char* FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive*,int /*<<< orphan*/ ) ; 
 char const* FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 struct archive* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,char const*,int) ; 
 scalar_t__ FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void
FUNC18(const char *name)
{
	const char *n[7] = { "f1", "f2", "f3", "d1/f1", "d1/f2", "d1/f3", NULL };
	struct archive_entry *ae;
	struct archive *a;
	int i;

	FUNC11((a = FUNC6()) != NULL);
	if (ARCHIVE_OK != FUNC9(a)) {
		FUNC17("Unsupported bzip2");
		return;
	}
	FUNC13(a, ARCHIVE_OK, FUNC10(a));
	FUNC15(name);
	FUNC13(a, ARCHIVE_OK, FUNC8(a, name, 2));

	/* Read entries, match up names with list above. */
	for (i = 0; i < 6; ++i) {
		FUNC16("Could not read file %d (%s) from %s", i, n[i], name);
		FUNC13(a, ARCHIVE_OK,
		    FUNC7(a, &ae));
		FUNC14(n[i], FUNC0(ae));
	}

	/* Verify the end-of-archive. */
	FUNC13(a, ARCHIVE_EOF, FUNC7(a, &ae));

	/* Verify that the format detection worked. */
	FUNC12(FUNC1(a, 0), ARCHIVE_FILTER_BZIP2);
	FUNC14(FUNC2(a, 0), "bzip2");
	FUNC12(FUNC3(a), ARCHIVE_FORMAT_TAR_USTAR);

	FUNC13(a, ARCHIVE_OK, FUNC4(a));
	FUNC12(FUNC1(a, 0), ARCHIVE_FILTER_BZIP2);
	FUNC14(FUNC2(a, 0), "bzip2");
	FUNC12(FUNC3(a), ARCHIVE_FORMAT_TAR_USTAR);

	FUNC12(ARCHIVE_OK, FUNC5(a));
}