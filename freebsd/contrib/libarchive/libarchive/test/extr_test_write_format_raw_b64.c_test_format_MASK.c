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

/* Variables and functions */
 int /*<<< orphan*/  AE_IFREG ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 struct archive_entry* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,char*) ; 
 int FUNC4 (struct archive*) ; 
 int FUNC5 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 struct archive* FUNC7 () ; 
 int FUNC8 (struct archive*,struct archive_entry**) ; 
 int FUNC9 (struct archive*,char*,size_t) ; 
 int FUNC10 (struct archive*) ; 
 int FUNC11 (struct archive*) ; 
 int FUNC12 (struct archive*) ; 
 int FUNC13 (struct archive*) ; 
 int FUNC14 (struct archive*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 
 int FUNC16 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC17 () ; 
 int FUNC18 (struct archive*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct archive*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 char* FUNC24 (size_t) ; 
 int FUNC25 (struct archive*) ; 

__attribute__((used)) static void
FUNC26(int	(*set_format)(struct archive *))
{
	char filedata[64];
	struct archive_entry *ae;
	struct archive *a;
	size_t used;
	size_t buffsize = 1000000;
	char *buff;

	buff = FUNC24(buffsize);

	/* Create a new archive in memory. */
	FUNC19((a = FUNC17()) != NULL);
	FUNC21(a, ARCHIVE_OK, (*set_format)(a));
	FUNC21(a, ARCHIVE_OK, FUNC12(a));
	FUNC21(a, ARCHIVE_OK, FUNC18(a, buff, buffsize, &used));

	/*
	 * Write a file to it.
	 */
	FUNC19((ae = FUNC1()) != NULL);
	FUNC3(ae, "test");
	FUNC2(ae, AE_IFREG);
	FUNC21(a, ARCHIVE_OK, FUNC16(a, ae));
	FUNC0(ae);
	FUNC21(a, 9, FUNC14(a, "12345678", 9));
	FUNC21(a, ARCHIVE_OK, FUNC13(a));
	FUNC20(ARCHIVE_OK, FUNC15(a));

	/*
	 * Read from it.
	 */
	FUNC19((a = FUNC7()) != NULL);
	FUNC21(a, ARCHIVE_OK, FUNC11(a));
	FUNC21(a, ARCHIVE_OK, FUNC10(a));
	FUNC21(a, ARCHIVE_OK, FUNC9(a, buff, used));

	FUNC21(a, ARCHIVE_OK, FUNC8(a, &ae));
	FUNC21(a, 37, FUNC5(a, filedata, 64));
	FUNC22(filedata, "begin-base64 644 -\nMTIzNDU2NzgA\n====\n", 37);
	FUNC21(a, ARCHIVE_OK, FUNC4(a));
	FUNC20(ARCHIVE_OK, FUNC6(a));

	FUNC23(buff);
}