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
typedef  struct archive archive ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFREG ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 struct archive_entry* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct archive*) ; 
 scalar_t__ FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC9 () ; 
 scalar_t__ FUNC10 (struct archive*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (size_t) ; 
 int FUNC16 (struct archive*) ; 

__attribute__((used)) static void
FUNC17(int (*set_format)(struct archive *), int64_t size, int expected)
{
	struct archive_entry *ae;
	struct archive *a;
	size_t buffsize = 1000000;
	size_t used;
	char *buff;

	buff = FUNC15(buffsize);

	/* Create a new archive in memory. */
	FUNC11((a = FUNC9()) != NULL);
	FUNC12(0 == (*set_format)(a));
	FUNC12(0 == FUNC6(a));
	FUNC12(0 == FUNC10(a, buff, buffsize, &used));

	FUNC11((ae = FUNC2()) != NULL);
	FUNC0(ae, "file");
	FUNC4(ae, size);
	FUNC3(ae, AE_IFREG);
	FUNC13(expected, FUNC8(a, ae));
	if (expected != ARCHIVE_OK)
		FUNC11(FUNC5(a) != NULL);

	FUNC1(ae);
	FUNC7(a);
	FUNC14(buff);
}