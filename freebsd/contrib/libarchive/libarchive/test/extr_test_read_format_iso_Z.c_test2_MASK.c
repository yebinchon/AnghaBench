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
 int /*<<< orphan*/  ARCHIVE_FILTER_COMPRESS ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_ISO9660 ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int FUNC3 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int FUNC7 (struct archive*) ; 
 struct archive* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 

__attribute__((used)) static void
FUNC18(void)
{
	struct archive_entry *ae;
	struct archive *a;
	const char *name = "test_read_format_iso_2.iso.Z";

	FUNC17(name);

	FUNC13((a = FUNC8()) != NULL);
	FUNC15(a, ARCHIVE_OK,
	    FUNC11(a));
	FUNC15(a, ARCHIVE_OK,
	    FUNC12(a));
	FUNC15(a, ARCHIVE_OK,
	    FUNC10(a, name, 512));
	FUNC15(a, ARCHIVE_OK,
	    FUNC9(a, &ae));
	FUNC16(".", FUNC1(ae));
	FUNC15(a, ARCHIVE_OK,
	    FUNC9(a, &ae));
	FUNC16("A", FUNC1(ae));
	FUNC15(a, ARCHIVE_OK,
	    FUNC9(a, &ae));
	FUNC16("A/B", FUNC1(ae));
	FUNC15(a, ARCHIVE_OK,
	    FUNC9(a, &ae));
	FUNC16("C", FUNC1(ae));
	FUNC15(a, ARCHIVE_OK,
	    FUNC9(a, &ae));
	FUNC16("C/D", FUNC1(ae));
	FUNC15(a, ARCHIVE_EOF,
	    FUNC9(a, &ae));
	FUNC14(5, FUNC2(a));
	FUNC14(FUNC3(a, 0),
	    ARCHIVE_FILTER_COMPRESS);
	FUNC14(FUNC4(a), ARCHIVE_FORMAT_ISO9660);
	FUNC14(FUNC0(ae), 0);
	FUNC15(a, FUNC7(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	FUNC15(a, ARCHIVE_OK, FUNC5(a));
	FUNC14(ARCHIVE_OK, FUNC6(a));
}