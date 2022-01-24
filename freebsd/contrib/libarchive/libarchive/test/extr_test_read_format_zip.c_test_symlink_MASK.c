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
 int /*<<< orphan*/  AE_IFLNK ; 
 int /*<<< orphan*/  AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 struct archive* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,char*,size_t,int) ; 
 char* FUNC18 (size_t*,char const*) ; 

__attribute__((used)) static void
FUNC19(void)
{
	const char *refname = "test_read_format_zip_symlink.zip";
	char *p;
	size_t s;
	struct archive *a;
	struct archive_entry *ae;

	FUNC15(refname);
	p = FUNC18(&s, refname);

	/* Symlinks can only be extracted with the seeking reader. */
	FUNC11((a = FUNC8()) != NULL);
	FUNC13(a, ARCHIVE_OK, FUNC10(a));
	FUNC13(a, ARCHIVE_OK, FUNC17(a, p, s, 1));

	FUNC13(a, ARCHIVE_OK, FUNC9(a, &ae));
	FUNC14("file", FUNC2(ae));
	FUNC12(AE_IFREG, FUNC0(ae));
	FUNC12(FUNC1(ae), 0);
	FUNC13(a, FUNC7(a), 0);

	FUNC13(a, ARCHIVE_OK, FUNC9(a, &ae));
	FUNC14("symlink", FUNC2(ae));
	FUNC12(AE_IFLNK, FUNC0(ae));
	FUNC12(0, FUNC3(ae));
	FUNC14("file", FUNC4(ae));
	FUNC12(FUNC1(ae), 0);
	FUNC13(a, FUNC7(a), 0);

	FUNC13(a, ARCHIVE_EOF, FUNC9(a, &ae));
	FUNC13(a, ARCHIVE_OK, FUNC5(a));
	FUNC13(a, ARCHIVE_OK, FUNC6(a));

	FUNC16(p);
}