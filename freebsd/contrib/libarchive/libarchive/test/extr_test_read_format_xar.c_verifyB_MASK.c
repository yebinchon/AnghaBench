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
 scalar_t__ ARCHIVE_OK ; 
 scalar_t__ FUNC0 (struct archive_entry*) ; 
 scalar_t__ FUNC1 (struct archive*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 struct archive* FUNC3 () ; 
 scalar_t__ FUNC4 (struct archive*,struct archive_entry**) ; 
 scalar_t__ FUNC5 (struct archive*,unsigned char*,size_t) ; 
 scalar_t__ FUNC6 (struct archive*) ; 
 scalar_t__ FUNC7 (struct archive*) ; 
 scalar_t__ FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 scalar_t__ FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(unsigned char *d, size_t s) {
	struct archive* a;
	struct archive_entry *entry = NULL;
	size_t buf_size;
	unsigned char *buf;

	FUNC9((a = FUNC3()) != NULL);

	if(ARCHIVE_OK != FUNC7(a)) {
		FUNC14("Unsupported gzip");
		FUNC11(ARCHIVE_OK, FUNC2(a));
		return;
	}

	if(ARCHIVE_OK != FUNC6(a)) {
		FUNC14("Unsupported bzip2");
		FUNC11(ARCHIVE_OK, FUNC2(a));
		return;
	}

	if(ARCHIVE_OK != FUNC8(a)) {
		FUNC14("Unsupported xar");
		FUNC11(ARCHIVE_OK, FUNC2(a));
		return;
	}

	FUNC10(0 == FUNC5(a, d, s));

	// f1, content "onetwothree\n", size 12 bytes
	FUNC10(0 == FUNC4(a, &entry));
	buf_size = (size_t) FUNC0(entry);
	FUNC10(buf_size == 12);
	buf = (unsigned char*) FUNC13(buf_size);
	FUNC10(NULL != buf);
	FUNC10(buf_size == (size_t) FUNC1(a, buf, buf_size));
	FUNC12(buf);

	// f2, content "fourfivesix\n", size 12 bytes
	FUNC10(0 == FUNC4(a, &entry));
	buf_size = (size_t) FUNC0(entry);
	FUNC10(buf_size == 12);
	buf = (unsigned char*) FUNC13(buf_size);
	FUNC10(NULL != buf);
	FUNC10(buf_size == (size_t) FUNC1(a, buf, buf_size));
	FUNC12(buf);

	FUNC11(ARCHIVE_OK, FUNC2(a));
}