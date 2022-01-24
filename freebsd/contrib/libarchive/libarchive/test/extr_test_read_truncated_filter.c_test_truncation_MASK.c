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
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 struct archive_entry* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 scalar_t__ FUNC8 (struct archive*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 struct archive* FUNC10 () ; 
 int FUNC11 (struct archive*,struct archive_entry**) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 
 int /*<<< orphan*/  FUNC16 (struct archive*) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (struct archive*) ; 
 int /*<<< orphan*/  FUNC19 (struct archive*,struct archive_entry*) ; 
 struct archive* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct archive*,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC22 (struct archive*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct archive*) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 scalar_t__ FUNC30 (size_t) ; 
 int /*<<< orphan*/  FUNC31 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC34 (char*,char*,char const*,int) ; 
 int FUNC35 (struct archive*) ; 

__attribute__((used)) static void
FUNC36(const char *compression,
    int (*set_compression)(struct archive *), int can_prog)
{
	struct archive_entry *ae;
	struct archive* a;
	char path[16];
	char *buff, *data;
	size_t buffsize, datasize, used1;
	int i, j, r, use_prog;

	buffsize = 2000000;
	FUNC24(NULL != (buff = (char *)FUNC30(buffsize)));
	if (buff == NULL)
		return;

	datasize = 10000;
	FUNC24(NULL != (data = (char *)FUNC30(datasize)));
	if (data == NULL) {
		FUNC29(buff);
		return;
	}
	FUNC31(data, 0, datasize);

	/*
	 * Write a bunch of files with semi-random data.
	 */
	FUNC24((a = FUNC20()) != NULL);
	FUNC26(a, ARCHIVE_OK, FUNC23(a));
	FUNC26(a, ARCHIVE_OK,
	    FUNC15(a));
	r = (*set_compression)(a);
	if (r != ARCHIVE_OK && !can_prog) {
		FUNC33("%s writing not supported on this platform",
		    compression);
		FUNC25(ARCHIVE_OK, FUNC18(a));
		FUNC29(buff);
		FUNC29(data);
		return;
	}
	use_prog = (r == ARCHIVE_WARN && can_prog);
	FUNC26(a, ARCHIVE_OK,
	    FUNC22(a, 10));
	FUNC26(a, ARCHIVE_OK,
	    FUNC21(a, buff, buffsize, &used1));
	FUNC24((ae = FUNC2()) != NULL);
	FUNC4(ae, AE_IFREG);
	FUNC5(ae, datasize);
	for (i = 0; i < 100; i++) {
		FUNC34(path, "%s%d", compression, i);
		FUNC0(ae, path);
		FUNC28(path);
		if (!FUNC26(a, ARCHIVE_OK,
		    FUNC19(a, ae))) {
			FUNC18(a);
			FUNC29(data);
			FUNC29(buff);
			return;
		}
		for (j = 0; j < (int)datasize; ++j) {
			data[j] = (char)(FUNC32() % 256);
		}
		FUNC28(path);
		if (!FUNC26(a, datasize,
		    FUNC17(a, data, datasize))) {
			FUNC18(a);
			FUNC29(data);
			FUNC29(buff);
			return;
		}
	}
	FUNC1(ae);
	FUNC26(a, ARCHIVE_OK, FUNC16(a));
	FUNC25(ARCHIVE_OK, FUNC18(a));

	FUNC24((a = FUNC10()) != NULL);
	FUNC26(a, ARCHIVE_OK, FUNC14(a));
	FUNC26(a, ARCHIVE_OK, FUNC13(a));

	FUNC26(a, ARCHIVE_OK,
	    FUNC12(a, buff, used1 - used1/64));
	for (i = 0; i < 100; i++) {
		if (ARCHIVE_OK != FUNC11(a, &ae)) {
			FUNC28("Should have non-NULL error message for %s",
			    compression);
			FUNC24(NULL != FUNC6(a));
			break;
		}
		FUNC34(path, "%s%d", compression, i);
		FUNC27(path, FUNC3(ae));
		if (datasize != (size_t)FUNC8(a, data, datasize)) {
			FUNC28("Should have non-NULL error message for %s",
			    compression);
			FUNC24(NULL != FUNC6(a));
			break;
		}
	}
	FUNC26(a, (use_prog)?ARCHIVE_WARN:ARCHIVE_OK,
	    FUNC7(a));
	FUNC25(ARCHIVE_OK, FUNC9(a));

	FUNC29(data);
	FUNC29(buff);
}