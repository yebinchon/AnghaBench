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
 int /*<<< orphan*/  AE_IFDIR ; 
 int ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_MTREE ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int FUNC7 (struct archive*) ; 
 struct archive* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC18(void)
{
	static char archive[] =
	    "#mtree\n"
	    "d type=dir content=.\n";
	struct archive_entry *ae;
	struct archive *a;

	FUNC14((a = FUNC8()) != NULL);
	FUNC16(a, ARCHIVE_OK,
	    FUNC12(a));
	FUNC16(a, ARCHIVE_OK,
	    FUNC13(a));
	FUNC16(a, ARCHIVE_OK,
	    FUNC11(a, "mtree:checkfs"));
	FUNC16(a, ARCHIVE_OK,
	    FUNC10(a, archive, sizeof(archive)));
	FUNC16(a, ARCHIVE_OK, FUNC9(a, &ae));
	FUNC15(FUNC4(a), ARCHIVE_FORMAT_MTREE);
	FUNC17(FUNC2(ae), "d");
	FUNC15(FUNC0(ae), AE_IFDIR);
	FUNC15(FUNC1(ae), 0);
	FUNC16(a, FUNC7(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	FUNC16(a, ARCHIVE_EOF, FUNC9(a, &ae));
	FUNC15(1, FUNC3(a));
	FUNC15(ARCHIVE_OK, FUNC5(a));
	FUNC15(ARCHIVE_OK, FUNC6(a));
}