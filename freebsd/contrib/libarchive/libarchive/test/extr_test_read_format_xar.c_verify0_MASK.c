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
typedef  scalar_t__ int64_t ;

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
 int FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/ * FUNC8 (struct archive_entry*) ; 
 int FUNC9 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive_entry*) ; 
 int FUNC11 (struct archive*,void const**,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (void const*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC16(struct archive *a, struct archive_entry *ae)
{
	const void *p;
	size_t size;
	int64_t offset;

	FUNC12(FUNC0(ae) == AE_IFREG);
	FUNC13(FUNC4(ae) & 0777, 0644);
	FUNC13(FUNC9(ae), UID);
	FUNC13(FUNC1(ae), GID);
	FUNC15(FUNC10(ae), UNAME);
	FUNC15(FUNC2(ae), GNAME);
	FUNC15(FUNC6(ae), "f1");
	FUNC12(FUNC3(ae) == NULL);
	FUNC12(FUNC8(ae) == NULL);
	FUNC13(FUNC5(ae), 86401);
	FUNC13(FUNC7(ae), 16);
	FUNC13(FUNC11(a, &p, &size, &offset), 0);
	FUNC13((int)size, 16);
	FUNC13((int)offset, 0);
	FUNC14(p, "hellohellohello\n", 16);
}