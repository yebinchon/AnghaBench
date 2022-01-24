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
 scalar_t__ AE_IFDIR ; 
 scalar_t__ AE_IFLNK ; 
 int GID ; 
 char* GNAME ; 
 int UID ; 
 char* UNAME ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*) ; 
 int FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC8 (struct archive_entry*) ; 
 int FUNC9 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC14(struct archive *a, struct archive_entry *ae)
{
	(void)a; /* UNUSED */
	/* A hardlink is not a symlink. */
	FUNC11(FUNC0(ae) != AE_IFLNK);
	/* Nor is it a directory. */
	FUNC11(FUNC0(ae) != AE_IFDIR);
	FUNC12(FUNC4(ae) & 0777, 0644);
	FUNC12(FUNC9(ae), UID);
	FUNC12(FUNC1(ae), GID);
	FUNC13(FUNC10(ae), UNAME);
	FUNC13(FUNC2(ae), GNAME);
	FUNC13(FUNC7(ae), "hardlink");
	FUNC13(FUNC3(ae), "f1");
	FUNC11(FUNC8(ae) == NULL);
	FUNC12(FUNC5(ae), 86401);
	FUNC12(FUNC6(ae), 2);
}