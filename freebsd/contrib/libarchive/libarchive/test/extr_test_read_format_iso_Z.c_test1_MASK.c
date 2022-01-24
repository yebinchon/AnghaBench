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
 int /*<<< orphan*/  ARCHIVE_FILTER_COMPRESS ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_ISO9660 ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct archive*) ; 
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

__attribute__((used)) static void
FUNC16(void)
{
	struct archive_entry *ae;
	struct archive *a;
	const char *name = "test_read_format_iso.iso.Z";

	FUNC15(name);

	FUNC12((a = FUNC7()) != NULL);
	FUNC14(a, ARCHIVE_OK,
	    FUNC10(a));
	FUNC14(a, ARCHIVE_OK,
	    FUNC11(a));
	FUNC14(a, ARCHIVE_OK,
	    FUNC9(a, name, 512));
	FUNC14(a, ARCHIVE_OK,
	    FUNC8(a, &ae));
	FUNC13(1, FUNC1(a));
	FUNC13(FUNC2(a, 0),
	    ARCHIVE_FILTER_COMPRESS);
	FUNC13(FUNC3(a), ARCHIVE_FORMAT_ISO9660);
	FUNC13(FUNC0(ae), 0);
	FUNC14(a, FUNC6(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	FUNC14(a, ARCHIVE_OK, FUNC4(a));
	FUNC13(ARCHIVE_OK, FUNC5(a));
}