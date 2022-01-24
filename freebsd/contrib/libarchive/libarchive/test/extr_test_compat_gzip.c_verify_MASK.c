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
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_FILTER_GZIP ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_TAR_USTAR ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 char* FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive*,int /*<<< orphan*/ ) ; 
 char const* FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 struct archive* FUNC6 () ; 
 int FUNC7 (struct archive*,struct archive_entry**) ; 
 int FUNC8 (struct archive*,char const*,int) ; 
 int FUNC9 (struct archive*) ; 
 int FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,int,int) ; 
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
	int i,r;

	FUNC11((a = FUNC6()) != NULL);
	r = FUNC9(a);
	if (r == ARCHIVE_WARN) {
		FUNC17("gzip reading not fully supported on this platform");
		FUNC12(ARCHIVE_OK, FUNC5(a));
		return;
	}
	FUNC13(a, ARCHIVE_OK, r);
	FUNC13(a, ARCHIVE_OK, FUNC10(a));
	FUNC15(name);
	FUNC13(a, ARCHIVE_OK, FUNC8(a, name, 200));

	/* Read entries, match up names with list above. */
	for (i = 0; i < 6; ++i) {
		FUNC16("Could not read file %d (%s) from %s", i, n[i], name);
		FUNC13(a, ARCHIVE_OK,
		    FUNC7(a, &ae));
		if (r != ARCHIVE_OK) {
			FUNC5(a);
			return;
		}
		FUNC14(n[i], FUNC0(ae));
	}

	/* Verify the end-of-archive. */
	FUNC13(a, ARCHIVE_EOF, FUNC7(a, &ae));

	/* Verify that the format detection worked. */
	FUNC12(FUNC1(a, 0), ARCHIVE_FILTER_GZIP);
	FUNC14(FUNC2(a, 0), "gzip");
	FUNC12(FUNC3(a), ARCHIVE_FORMAT_TAR_USTAR);

	FUNC12(ARCHIVE_OK, FUNC4(a));
	FUNC12(ARCHIVE_OK, FUNC5(a));
}