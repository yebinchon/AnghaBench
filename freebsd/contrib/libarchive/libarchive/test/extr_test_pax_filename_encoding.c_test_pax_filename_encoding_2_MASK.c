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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFLNK ; 
 int /*<<< orphan*/  AE_IFREG ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_WARN ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 struct archive_entry* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 struct archive* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*) ; 
 int /*<<< orphan*/  FUNC22 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct archive*,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC25 (struct archive*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct archive*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 

__attribute__((used)) static void
FUNC34(void)
{
	char filename[] = "abc\314\214mno\374xyz";
	struct archive *a;
	struct archive_entry *entry;
	char buff[65536];
	char longname[] = "abc\314\214mno\374xyz"
	    "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
	    "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
	    "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
	    "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
	    "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
	    "/abc\314\214mno\374xyz/abcdefghijklmnopqrstuvwxyz"
	    ;
	size_t used;

	/*
	 * We need a starting locale which has invalid sequences.
	 * en_US.UTF-8 seems to be commonly supported.
	 */
	/* If it doesn't exist, just warn and return. */
	if (NULL == FUNC32(LC_ALL, "en_US.UTF-8")) {
		FUNC33("invalid encoding tests require a suitable locale;"
		    " en_US.UTF-8 not available on this system");
		return;
	}

	FUNC27((a = FUNC23()) != NULL);
	FUNC29(a, 0, FUNC26(a));
	FUNC29(a, 0, FUNC19(a));
	FUNC29(a, 0, FUNC25(a, 0));
	FUNC28(0,
	    FUNC24(a, buff, sizeof(buff), &used));

	FUNC27((entry = FUNC8()) != NULL);
	/* Set pathname, gname, uname, hardlink to nonconvertible values. */
	FUNC2(entry, filename);
	FUNC0(entry, filename);
	FUNC4(entry, filename);
	FUNC1(entry, filename);
	FUNC10(entry, AE_IFREG);
	FUNC31("This should generate a warning for nonconvertible names.");
	FUNC28(ARCHIVE_WARN, FUNC22(a, entry));
	FUNC5(entry);

	FUNC27((entry = FUNC8()) != NULL);
	/* Set path, gname, uname, and symlink to nonconvertible values. */
	FUNC2(entry, filename);
	FUNC0(entry, filename);
	FUNC4(entry, filename);
	FUNC3(entry, filename);
	FUNC10(entry, AE_IFLNK);
	FUNC31("This should generate a warning for nonconvertible names.");
	FUNC28(ARCHIVE_WARN, FUNC22(a, entry));
	FUNC5(entry);

	FUNC27((entry = FUNC8()) != NULL);
	/* Set pathname to a very long nonconvertible value. */
	FUNC2(entry, longname);
	FUNC10(entry, AE_IFREG);
	FUNC31("This should generate a warning for nonconvertible names.");
	FUNC28(ARCHIVE_WARN, FUNC22(a, entry));
	FUNC5(entry);

	FUNC29(a, ARCHIVE_OK, FUNC20(a));
	FUNC28(ARCHIVE_OK, FUNC21(a));

	/*
	 * Now read the entries back.
	 */

	FUNC27((a = FUNC15()) != NULL);
	FUNC28(0, FUNC18(a));
	FUNC28(0, FUNC17(a, buff, used));

	FUNC28(0, FUNC16(a, &entry));
	FUNC30(filename, FUNC9(entry));
	FUNC30(filename, FUNC6(entry));
	FUNC30(filename, FUNC12(entry));
	FUNC30(filename, FUNC7(entry));

	FUNC28(0, FUNC16(a, &entry));
	FUNC30(filename, FUNC9(entry));
	FUNC30(filename, FUNC6(entry));
	FUNC30(filename, FUNC12(entry));
	FUNC30(filename, FUNC11(entry));

	FUNC28(0, FUNC16(a, &entry));
	FUNC30(longname, FUNC9(entry));

	FUNC29(a, ARCHIVE_OK, FUNC13(a));
	FUNC28(ARCHIVE_OK, FUNC14(a));
}