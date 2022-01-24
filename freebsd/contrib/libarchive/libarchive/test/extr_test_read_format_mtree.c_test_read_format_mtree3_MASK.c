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
typedef  int /*<<< orphan*/  archive ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFLNK ; 
 int /*<<< orphan*/  AE_IFREG ; 
 int ARCHIVE_EOF ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int FUNC6 (struct archive*) ; 
 struct archive* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*) ; 

__attribute__((used)) static void
FUNC20(void)
{
	static char archive[] =
	    "#mtree\n"
	    "a type=file contents=file\n"
	    "b type=link link=a\n"
	    "c type=file contents=file\n";
	struct archive_entry *ae;
	struct archive *a;

	FUNC18("mtree3", 0777);
	FUNC14("mtree3");
	FUNC19("file", 0644, "file contents");

	FUNC13((a = FUNC7()) != NULL);
	FUNC16(a, ARCHIVE_OK,
	    FUNC11(a));
	FUNC16(a, ARCHIVE_OK,
	    FUNC12(a));
	FUNC16(a, ARCHIVE_OK,
	    FUNC10(a, "mtree:checkfs"));
	FUNC16(a, ARCHIVE_OK,
	    FUNC9(a, archive, sizeof(archive)));
	FUNC16(a, ARCHIVE_OK, FUNC8(a, &ae));
	FUNC17(FUNC2(ae), "a");
	FUNC15(FUNC0(ae), AE_IFREG);
	FUNC15(FUNC1(ae), 0);
	FUNC16(a, FUNC6(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	FUNC16(a, ARCHIVE_OK, FUNC8(a, &ae));
	FUNC17(FUNC2(ae), "b");
	FUNC15(FUNC0(ae), AE_IFLNK);
	FUNC15(FUNC1(ae), 0);
	FUNC16(a, FUNC6(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	FUNC16(a, ARCHIVE_OK, FUNC8(a, &ae));
	FUNC17(FUNC2(ae), "c");
	FUNC15(FUNC0(ae), AE_IFREG);
	FUNC15(FUNC1(ae), 0);
	FUNC16(a, FUNC6(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

	FUNC16(a, ARCHIVE_EOF, FUNC8(a, &ae));
	FUNC15(3, FUNC3(a));
	FUNC15(ARCHIVE_OK, FUNC4(a));
	FUNC15(ARCHIVE_OK, FUNC5(a));

	FUNC14("..");
}