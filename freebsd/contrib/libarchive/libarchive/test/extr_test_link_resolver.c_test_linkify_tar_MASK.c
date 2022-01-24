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
struct archive_entry_linkresolver {int dummy; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFDIR ; 
 int /*<<< orphan*/  ARCHIVE_FORMAT_TAR_USTAR ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry_linkresolver*,struct archive_entry**,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry_linkresolver*) ; 
 struct archive_entry_linkresolver* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry_linkresolver*,int /*<<< orphan*/ ) ; 
 struct archive_entry* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(void)
{
	struct archive_entry *entry, *e2;
	struct archive_entry_linkresolver *resolver;

	/* Initialize the resolver. */
	FUNC16(NULL != (resolver = FUNC4()));
	FUNC5(resolver,
	    ARCHIVE_FORMAT_TAR_USTAR);

	/* Create an entry with only 1 link and try to linkify it. */
	FUNC16(NULL != (entry = FUNC6()));
	FUNC13(entry, "test1");
	FUNC11(entry, 1);
	FUNC8(entry, 2);
	FUNC12(entry, 1);
	FUNC14(entry, 10);
	FUNC2(resolver, &entry, &e2);

	/* Shouldn't have been changed. */
	FUNC16(e2 == NULL);
	FUNC17(10, FUNC15(entry));
	FUNC18("test1", FUNC7(entry));

	/* Now, try again with an entry that has 2 links. */
	FUNC13(entry, "test2");
	FUNC12(entry, 2);
	FUNC11(entry, 2);
	FUNC2(resolver, &entry, &e2);
	/* Shouldn't be altered, since it wasn't seen before. */
	FUNC16(e2 == NULL);
	FUNC18("test2", FUNC7(entry));
	FUNC18(NULL, FUNC1(entry));
	FUNC17(10, FUNC15(entry));

	/* Match again and make sure it does get altered. */
	FUNC2(resolver, &entry, &e2);
	FUNC16(e2 == NULL);
	FUNC18("test2", FUNC7(entry));
	FUNC18("test2", FUNC1(entry));
	FUNC17(0, FUNC15(entry));


	/* Dirs should never be matched as hardlinks, regardless. */
	FUNC13(entry, "test3");
	FUNC12(entry, 2);
	FUNC9(entry, AE_IFDIR);
	FUNC11(entry, 3);
	FUNC10(entry, NULL);
	FUNC2(resolver, &entry, &e2);
	/* Shouldn't be altered, since it wasn't seen before. */
	FUNC16(e2 == NULL);
	FUNC18("test3", FUNC7(entry));
	FUNC18(NULL, FUNC1(entry));

	/* Dir, so it shouldn't get matched. */
	FUNC2(resolver, &entry, &e2);
	FUNC16(e2 == NULL);
	FUNC18("test3", FUNC7(entry));
	FUNC18(NULL, FUNC1(entry));

	FUNC0(entry);
	FUNC3(resolver);
}