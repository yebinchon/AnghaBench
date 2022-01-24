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
typedef  struct archive_entry archive_entry ;
typedef  struct archive archive ;
typedef  enum enc { ____Placeholder_enc } enc ;

/* Variables and functions */
 int ARCHIVE_EOF ; 
 scalar_t__ ARCHIVE_FILTER_NONE ; 
 scalar_t__ ARCHIVE_FORMAT_XAR ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ; 
 int ARCHIVE_WARN ; 
#define  BZIP2 129 
#define  GZIP 128 
 int FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive*) ; 
 int FUNC2 (struct archive*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 scalar_t__ FUNC5 (struct archive*) ; 
 int FUNC6 (struct archive*) ; 
 struct archive* FUNC7 () ; 
 scalar_t__ FUNC8 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC9 (struct archive*,unsigned char*,size_t) ; 
 scalar_t__ FUNC10 (struct archive*) ; 
 int FUNC11 (struct archive*) ; 
 scalar_t__ FUNC12 (struct archive*) ; 
 int FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct archive*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*) ; 
 unsigned char* FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

__attribute__((used)) static void FUNC23(unsigned char *d, size_t s,
    void (*f1)(struct archive *, struct archive_entry *),
    void (*f2)(struct archive *, struct archive_entry *),
    enum enc etype)
{
	struct archive_entry *ae;
	struct archive *a;
	unsigned char *buff;
	int r;

	FUNC14((a = FUNC7()) != NULL);
	switch (etype) {
	case BZIP2:
		/* This is only check whether bzip is supported or not.
		 * This filter won't be used this test.  */
		if (ARCHIVE_OK != FUNC11(a)) {
			FUNC22("Unsupported bzip2");
			FUNC16(ARCHIVE_OK, FUNC5(a));
			return;
		}
		break;
	case GZIP:
		/* This gzip must be needed. archive_read_support_format_xar()
		 * will return a warning if gzip is unsupported. */
		break;
	}
	FUNC15(0 == FUNC10(a));
	r = FUNC13(a);
	if (r == ARCHIVE_WARN) {
		FUNC22("xar reading not fully supported on this platform");
		FUNC16(ARCHIVE_OK, FUNC5(a));
		return;
	}
	FUNC14((buff = FUNC19(100000)) != NULL);
	if (buff == NULL)
		return;
	FUNC20(buff, d, s);
	FUNC21(buff + s, 0, 2048);

	FUNC15(0 == FUNC12(a));
	FUNC15(0 == FUNC9(a, buff, s + 1024));
	FUNC15(0 == FUNC8(a, &ae));
	FUNC16(FUNC2(a, 0), ARCHIVE_FILTER_NONE);
	FUNC16(FUNC3(a), ARCHIVE_FORMAT_XAR);
	FUNC16(FUNC0(ae), 0);
	FUNC17(a, FUNC6(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);
	/* Verify the only entry. */
	f1(a, ae);
	if (f2) {
		FUNC15(0 == FUNC8(a, &ae));
		FUNC16(FUNC2(a, 0), ARCHIVE_FILTER_NONE);
		FUNC16(FUNC3(a), ARCHIVE_FORMAT_XAR);
		/* Verify the only entry. */
		f2(a, ae);
		FUNC16(2, FUNC1(a));
	} else {
		FUNC16(1, FUNC1(a));
	}
	/* End of archive. */
	FUNC16(ARCHIVE_EOF, FUNC8(a, &ae));

	FUNC17(a, ARCHIVE_OK, FUNC4(a));
	FUNC16(ARCHIVE_OK, FUNC5(a));
	FUNC18(buff);
}