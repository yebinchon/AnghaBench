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
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int FUNC0 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*,char*,int,int) ; 
 struct archive* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*,struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (int const) ; 

__attribute__((used)) static void FUNC17(struct archive_entry *ae, const char *msg)
{
	const int datasize = 100000;
	char *data;
	struct archive *ad;
	int i;

	data = FUNC16(datasize);
	for (i = 0; i < datasize; i++)
		data[i] = (char)(i % 256);

	/* Write the entry to disk. */
	FUNC8((ad = FUNC4()) != NULL);
	FUNC14("%s", msg);
	/*
	 * See above for an explanation why this next call
	 * is necessary.
	 */
	FUNC2(ae, datasize);
	FUNC10(ad, 0, FUNC7(ad, ae));
	for (i = 0; i < datasize - 999; i += 1000) {
		FUNC10(ad, ARCHIVE_OK,
		    FUNC3(ad, data + i, 1000, i));
	}
	FUNC10(ad, 0, FUNC5(ad));
	FUNC9(0, FUNC6(ad));

	/* Test the entries on disk. */
	FUNC13(FUNC1(ae), FUNC0(ae) & 0777);
	FUNC12(FUNC1(ae), i);
	FUNC11(data, datasize, FUNC1(ae));
	FUNC15(data);
}