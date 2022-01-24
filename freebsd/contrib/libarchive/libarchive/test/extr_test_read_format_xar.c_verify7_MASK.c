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
 scalar_t__ AE_IFREG ; 
 int GID ; 
 char* GNAME ; 
 int UID ; 
 char* UNAME ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC3 (struct archive_entry*) ; 
 int FUNC4 (struct archive_entry*) ; 
 int FUNC5 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC7 (struct archive_entry*) ; 
 int FUNC8 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC13(struct archive *a, struct archive_entry *ae)
{
	(void)a; /* UNUSED */
	FUNC10(FUNC0(ae) == AE_IFREG);
	FUNC11(FUNC4(ae) & 0777, 0644);
	FUNC11(FUNC8(ae), UID);
	FUNC11(FUNC1(ae), GID);
	FUNC12(FUNC9(ae), UNAME);
	FUNC12(FUNC2(ae), GNAME);
	FUNC12(FUNC6(ae), "dir1/f1");
	FUNC10(FUNC3(ae) == NULL);
	FUNC10(FUNC7(ae) == NULL);
	FUNC11(FUNC5(ae), 86401);
}