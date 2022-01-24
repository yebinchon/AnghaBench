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
 int /*<<< orphan*/  ARCHIVE_FORMAT_CPIO_POSIX ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry_linkresolver*,struct archive_entry**,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry_linkresolver*) ; 
 struct archive_entry_linkresolver* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry_linkresolver*,int /*<<< orphan*/ ) ; 
 struct archive_entry* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(void)
{
	struct archive_entry *entry, *e2;
	struct archive_entry_linkresolver *resolver;

	/* Initialize the resolver. */
	FUNC14(NULL != (resolver = FUNC4()));
	FUNC5(resolver,
	    ARCHIVE_FORMAT_CPIO_POSIX);

	/* Create an entry with 2 link and try to linkify it. */
	FUNC14(NULL != (entry = FUNC6()));
	FUNC11(entry, "test1");
	FUNC9(entry, 1);
	FUNC8(entry, 2);
	FUNC10(entry, 2);
	FUNC12(entry, 10);
	FUNC2(resolver, &entry, &e2);

	/* Shouldn't have been changed. */
	FUNC14(e2 == NULL);
	FUNC15(10, FUNC13(entry));
	FUNC16("test1", FUNC7(entry));

	/* Still shouldn't be matched. */
	FUNC2(resolver, &entry, &e2);
	FUNC14(e2 == NULL);
	FUNC16("test1", FUNC7(entry));
	FUNC16(NULL, FUNC1(entry));
	FUNC15(10, FUNC13(entry));

	FUNC0(entry);
	FUNC3(resolver);
}