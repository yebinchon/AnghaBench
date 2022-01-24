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
 int /*<<< orphan*/  ARCHIVE_FILTER_NONE ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_TAR_GNUTAR ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 struct archive* FUNC6 () ; 
 int FUNC7 (struct archive*,struct archive_entry**) ; 
 int FUNC8 (struct archive*,char*,int) ; 
 int FUNC9 (struct archive*) ; 
 int FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15(void)
{
	char name[] = "test_compat_gtar_2.tar";
	struct archive_entry *ae;
	struct archive *a;
	int r;

	FUNC11((a = FUNC6()) != NULL);
	FUNC13(a, ARCHIVE_OK, FUNC9(a));
	FUNC13(a, ARCHIVE_OK, FUNC10(a));
	FUNC14(name);
	FUNC13(a, ARCHIVE_OK, FUNC8(a, name, 10240));

	/* Read first entry. */
	FUNC13(a, ARCHIVE_OK, r = FUNC7(a, &ae));
	if (r != ARCHIVE_OK) {
		FUNC5(a);
		return;
	}

	/* Check UID and GID */
	FUNC12(2097152, FUNC1(ae));
	FUNC12(2097152, FUNC0(ae));

	/* Verify the end-of-archive. */
	FUNC13(a, ARCHIVE_EOF, FUNC7(a, &ae));

	/* Verify that the format detection worked. */
	FUNC12(FUNC2(a, 0), ARCHIVE_FILTER_NONE);
	FUNC12(FUNC3(a), ARCHIVE_FORMAT_TAR_GNUTAR);

	FUNC12(ARCHIVE_OK, FUNC4(a));
	FUNC12(ARCHIVE_OK, FUNC5(a));
}