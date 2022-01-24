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
struct fns {int alloc; scalar_t__ maxlen; scalar_t__ longest_len; int /*<<< orphan*/ * names; scalar_t__ cnt; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  enum vtype { ____Placeholder_vtype } vtype ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_EOF ; 
 int /*<<< orphan*/  ARCHIVE_OK ; 
#define  ISO9660 130 
#define  JOLIET 129 
#define  ROCKRIDGE 128 
 int S_IFDIR ; 
 int FUNC0 (struct archive_entry*) ; 
 int FUNC1 (struct archive_entry*) ; 
 int FUNC2 (struct archive_entry*) ; 
 int FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 struct archive* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*,unsigned char*,size_t) ; 
 scalar_t__ FUNC10 (struct archive*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct archive*,int,struct fns*) ; 

__attribute__((used)) static void
FUNC21(unsigned char *buff, size_t used, enum vtype type, struct fns *fns)
{
	struct archive *a;
	struct archive_entry *ae;
	size_t i;

	/*
	 * Read ISO image.
	 */
	FUNC13((a = FUNC7()) != NULL);
	FUNC16(a, 0, FUNC12(a));
	FUNC16(a, 0, FUNC11(a));
	if (type >= 1)
		FUNC14(0 == FUNC10(a, NULL, "rockridge",
		    NULL));
	if (type >= 2)
		FUNC14(0 == FUNC10(a, NULL, "joliet",
		    NULL));
	FUNC16(a, 0, FUNC9(a, buff, used));

	/*
	 * Read Root Directory
	 * Root Directory entry must be in ISO image.
	 */
	FUNC16(a, 0, FUNC8(a, &ae));
	FUNC15(FUNC0(ae), FUNC1(ae));
	FUNC15(FUNC0(ae), FUNC3(ae));
	FUNC17(".", FUNC4(ae));
	switch (type) {
	case ROCKRIDGE:
		FUNC13((S_IFDIR | 0555) == FUNC2(ae));
		break;
	case JOLIET:
		FUNC13((S_IFDIR | 0700) == FUNC2(ae));
		break;
	case ISO9660:
		FUNC13((S_IFDIR | 0700) == FUNC2(ae));
		break;
	}

	/*
	 * Verify file status.
	 */
	FUNC19(fns->names, 0, sizeof(char *) * fns->alloc);
	fns->cnt = 0;
	for (i = 0; i < fns->alloc; i++)
		FUNC20(a, type, fns);
	for (i = 0; i < fns->alloc; i++)
		FUNC18(fns->names[i]);
	FUNC15((int)fns->longest_len, (int)fns->maxlen);

	/*
	 * Verify the end of the archive.
	 */
	FUNC16(a, ARCHIVE_EOF, FUNC8(a, &ae));
	FUNC16(a, ARCHIVE_OK, FUNC5(a));
	FUNC16(a, ARCHIVE_OK, FUNC6(a));
}