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
 int /*<<< orphan*/  ARCHIVE_FORMAT_CPIO_SVR4_NOCRC ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry_linkresolver*,struct archive_entry**,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry_linkresolver*) ; 
 struct archive_entry_linkresolver* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry_linkresolver*,int /*<<< orphan*/ ) ; 
 struct archive_entry* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(void)
{
	struct archive_entry *entry, *e2;
	struct archive_entry_linkresolver *resolver;

	/* Initialize the resolver. */
	FUNC13(NULL != (resolver = FUNC3()));
	FUNC4(resolver,
	    ARCHIVE_FORMAT_CPIO_SVR4_NOCRC);

	/* Create an entry with only 1 link and try to linkify it. */
	FUNC13(NULL != (entry = FUNC5()));
	FUNC10(entry, "test1");
	FUNC8(entry, 1);
	FUNC7(entry, 2);
	FUNC9(entry, 1);
	FUNC11(entry, 10);
	FUNC1(resolver, &entry, &e2);

	/* Shouldn't have been changed. */
	FUNC13(e2 == NULL);
	FUNC14(10, FUNC12(entry));
	FUNC15("test1", FUNC6(entry));

	/* Now, try again with an entry that has 3 links. */
	FUNC10(entry, "test2");
	FUNC9(entry, 3);
	FUNC8(entry, 2);
	FUNC1(resolver, &entry, &e2);

	/* First time, it just gets swallowed. */
	FUNC13(entry == NULL);
	FUNC13(e2 == NULL);

	/* Match again. */
	FUNC13(NULL != (entry = FUNC5()));
	FUNC10(entry, "test3");
	FUNC8(entry, 2);
	FUNC7(entry, 2);
	FUNC9(entry, 2);
	FUNC11(entry, 10);
	FUNC1(resolver, &entry, &e2);

	/* Should get back "test2" and nothing else. */
	FUNC15("test2", FUNC6(entry));
	FUNC14(0, FUNC12(entry));
	FUNC0(entry);
	FUNC13(NULL == e2);
	FUNC0(e2); /* This should be a no-op. */

	/* Match a third time. */
	FUNC13(NULL != (entry = FUNC5()));
	FUNC10(entry, "test4");
	FUNC8(entry, 2);
	FUNC7(entry, 2);
	FUNC9(entry, 3);
	FUNC11(entry, 10);
	FUNC1(resolver, &entry, &e2);

	/* Should get back "test3". */
	FUNC15("test3", FUNC6(entry));
	FUNC14(0, FUNC12(entry));

	/* Since "test4" was the last link, should get it back also. */
	FUNC15("test4", FUNC6(e2));
	FUNC14(10, FUNC12(e2));

	FUNC0(entry);
	FUNC0(e2);
	FUNC2(resolver);
}